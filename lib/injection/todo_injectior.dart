import 'package:get_it/get_it.dart';
import 'package:supabase_todo/application/todo/todo_cubit.dart';
import 'package:supabase_todo/domain/todo/i_todo_repository.dart';
import 'package:supabase_todo/infrastructure/todo/todo_datasource.dart';
import 'package:supabase_todo/infrastructure/todo/todo_repository.dart';

void deviceInit(GetIt getIt) {
  // Bloc
  getIt.registerFactory<ToDoCubit>(
    () => ToDoCubit(
      getIt(),
    ),
  );

  // Repository
  getIt.registerLazySingleton<IToDoRepository>(
    () => ToDoRepositoryImpl(getIt()),
  );

  // Data sources
  getIt.registerLazySingleton<ToDoDataSource>(
    () => ToDoDataSourceImpl(getIt()),
  );
}
