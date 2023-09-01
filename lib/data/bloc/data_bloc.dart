import 'package:bank/bank_observer.dart';
import 'package:bank/data/model/data_model.dart';
import 'package:bank/data/repository/data_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_bloc.freezed.dart';
part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc(this.repository) : super(const DataState()) {
    on<_onLoadData>(_onDataLoad);
  }
  final DataRepository repository;

  Future<void> _onDataLoad(
    _onLoadData event,
    Emitter<DataState> emit,
  ) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final resp = await repository.loadJsonData();

      return resp.when(
        (data) {
          logger.d("Data ======>$data");
          return emit(state.copyWith(data: data));
        },
        (_) => logger.e("Something happend"),
      );
    } catch (e) {
      logger.e(e);
    }
  }
}
