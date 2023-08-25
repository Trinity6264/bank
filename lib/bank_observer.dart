
import "package:bloc/bloc.dart";
import "package:logger/logger.dart";

final logger = Logger(
  // Customize the printer.
  printer: PrettyPrinter(methodCount: 0, lineLength: 1000),
);

class BankObserver extends BlocObserver {
  const BankObserver();

  @override
  void onError(BlocBase<void> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e(bloc.toString() + error.toString() + stackTrace.toString());
  }

  @override
  void onCreate(BlocBase<void> bloc) {
    super.onCreate(bloc);
    logger.t("${bloc.runtimeType} created");
  }

  @override
  void onClose(BlocBase<void> bloc) {
    super.onClose(bloc);
    logger.t("${bloc.runtimeType} disposed");
  }
}