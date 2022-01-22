import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_todo/application/todo/todo_cubit.dart';
import 'package:supabase_todo/presentation/widgets/index.dart';
import 'package:supabase_todo/utils/snack_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String currentTodo = "";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ToDoCubit, ToDoState>(listener: (context, state) {
      state.mapOrNull(
        error: (s) =>
            context.showErrorSnackBar(message: s.message ?? 'Oh boy!'),
      );
    }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Title',
                        ),
                        onChanged: (value) {
                          setState(() {
                            currentTodo = value;
                          });
                        },
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (currentTodo.trim() != '') {
                          context.read<ToDoCubit>().addToDo(currentTodo);
                          setState(() {
                            currentTodo = '';
                          });
                        }
                      },
                      child: const Text('Add Todo'))
                ],
              ),
            ),
            state.map(
              initial: (_) => const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              updated: (s) => Expanded(
                child: Column(
                  children: s.todos
                      .map((t) => SelectCard(
                            enabled: !t.isDone,
                            selected: t.isDone,
                            content: Text(t.name),
                            onTap: () => t.isDone
                                ? null
                                : context.read<ToDoCubit>().finishToDo(t.id),
                          ))
                      .toList(),
                ),
              ),
              error: (s) => Expanded(
                child: Column(
                  children: s.todos != null
                      ? s.todos!
                          .map((t) => ListTile(
                                title: Text(t.name),
                              ))
                          .toList()
                      : [],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
