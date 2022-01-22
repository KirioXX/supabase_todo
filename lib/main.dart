import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:supabase_todo/dev/bloc_observer.dart';
import 'package:supabase_todo/presentation/app.dart';

import 'injection/injector_container.dart' as injector;

void main() async {
  // Dependencie injection init
  await injector.init();

  // Supabase
  await Supabase.initialize(
    url: 'http://localhost:54321',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiJ9.ZopqoUt20nEV9cklpv9e3yw3PVyZLmKs5qLD6nGL1SI',
  );

  BlocOverrides.runZoned(
    () => runApp(const App()),
    blocObserver: AppBlocObserver(),
  );
}
