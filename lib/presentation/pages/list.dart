import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_todo/application/todo/todo_cubit.dart';
import 'package:supabase_todo/domain/todo/todo_list.dart';
import 'package:supabase_todo/presentation/widgets/index.dart';
import 'package:supabase_todo/utils/snack_bar.dart';

class ListPageArguments {
  final ToDoList todoList;

  static const routeName = '/list';

  ListPageArguments({required this.todoList});
}

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends AuthRequiredState<ListPage> {
  String currentTodo = "";

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ListPageArguments;
    context.read<ToDoCubit>().startStream(args.todoList.id);

    return BlocConsumer<ToDoCubit, ToDoState>(listener: (context, state) {
      state.mapOrNull(
        error: (s) =>
            context.showErrorSnackBar(message: s.message ?? 'Oh boy!'),
      );
    }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text(args.todoList.name),
        ),
        body: Column(
          children: [
            state.maybeMap(
              initial: (_) => const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              orElse: () => const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              updated: (s) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
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
                            onPressed: () async {
                              if (currentTodo.trim() != '') {
                                await context
                                    .read<ToDoCubit>()
                                    .addToDo(args.todoList.id, currentTodo);
                                setState(() {
                                  currentTodo = '';
                                });
                              }
                            },
                            child: const Text('Add Todo'))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView(
                      shrinkWrap: true,
                      children: s.todos.map((t) {
                        return SelectCard(
                          enabled: !t.isDone,
                          selected: t.isDone,
                          content: Text(t.name),
                          onTap: () => t.isDone
                              ? null
                              : context.read<ToDoCubit>().finishToDo(t.id),
                        );
                      }).toList(),
                    ),
                  ),
                ],
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
