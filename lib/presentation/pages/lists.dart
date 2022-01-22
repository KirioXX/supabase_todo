import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_todo/application/todo/todo_cubit.dart';
import 'package:supabase_todo/domain/todo/todo_list.dart';
import 'package:supabase_todo/presentation/pages/list.dart';
import 'package:supabase_todo/presentation/widgets/index.dart';
import 'package:supabase_todo/utils/snack_bar.dart';

class ListsPage extends StatefulWidget {
  const ListsPage({Key? key}) : super(key: key);

  @override
  State<ListsPage> createState() => _ListsPageState();
}

class _ListsPageState extends AuthRequiredState<ListsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ToDoCubit>().getToDoLists();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Lists'),
      ),
      body: BlocConsumer<ToDoCubit, ToDoState>(
        listener: (context, state) {
          state.mapOrNull(
            error: (s) =>
                context.showErrorSnackBar(message: s.message ?? 'Oh boy!'),
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            listsReceved: (s) => SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButton<ToDoList>(
                    hint: const Text('Pick a list'),
                    items: s.todoLists.map((ToDoList list) {
                      return DropdownMenuItem<ToDoList>(
                        value: list,
                        child: Text(list.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        Navigator.pushNamed(
                          context,
                          ListPageArguments.routeName,
                          arguments: ListPageArguments(todoList: value),
                        );
                      }
                    },
                  )
                ],
              ),
            ),
            updated: (s) => SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButton<ToDoList>(
                    hint: const Text('Pick a list'),
                    items: s.todoLists!.map((ToDoList list) {
                      return DropdownMenuItem<ToDoList>(
                        value: list,
                        child: Text(list.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        Navigator.pushNamed(
                          context,
                          ListPageArguments.routeName,
                          arguments: ListPageArguments(todoList: value),
                        );
                      }
                    },
                  )
                ],
              ),
            ),
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
