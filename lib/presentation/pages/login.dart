import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_todo/presentation/widgets/index.dart';
import 'package:supabase_todo/utils/snack_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends AuthState<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    final response = await Supabase.instance.client.auth.signIn(
      email: _emailController.text,
      password: _passwordController.text,
    );
    final error = response.error;
    if (error != null) {
      context.showErrorSnackBar(message: error.message);
    } else {
      _emailController.clear();
      _passwordController.clear();
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ).padding(horizontal: 10, bottom: 10),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ).padding(horizontal: 10),
          ElevatedButton(
            onPressed: () {
              _signIn();
            },
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
