import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:supabase_todo/injection/todo_injectior.dart';

final getIt = GetIt.instance;

Future init() async {
  //! Extenal
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  getIt.registerLazySingleton<Logger>(() => Logger());

  //! Domains
  deviceInit(getIt);
}
