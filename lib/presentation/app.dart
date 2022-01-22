import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_todo/application/todo/todo_cubit.dart';
import 'package:supabase_todo/presentation/pages/list.dart';
import 'package:supabase_todo/presentation/pages/lists.dart';
import 'package:supabase_todo/presentation/pages/login.dart';
import 'package:supabase_todo/presentation/pages/splash.dart';

import '../injection/injector_container.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ToDoCubit>(
          create: (context) => getIt<ToDoCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Trunk Pilot',
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (_) => const SplashPage(),
          '/login': (_) => const LoginPage(),
          '/lists': (_) => const ListsPage(),
          '/list': (_) => const ListPage(),
        },
      ),
    );
  }
}
