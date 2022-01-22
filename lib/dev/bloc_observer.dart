import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  Logger logger = Logger();

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logger.d(bloc.runtimeType);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.d(event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.d(change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.d(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) async {
    super.onError(bloc, error, stackTrace);
    logger.e(error);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logger.d(bloc.runtimeType);
  }
}
