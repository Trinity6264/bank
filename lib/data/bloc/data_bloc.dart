import 'package:bank/bank_observer.dart';
import 'package:bank/data/model/data_model.dart';
import 'package:bank/data/repository/data_repository.dart';
import 'package:bank/enums/tab_type.dart';
import 'package:bank/enums/transaction_type.dart';
import 'package:bank/transactions/model/transaction_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_bloc.freezed.dart';
part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc(this.repository) : super(const DataState()) {
    on<_onLoadData>(_onDataLoad);
    on<_LoadAllData>(_onLoadAllData);
    on<_LoadDebitData>(_onLoadDebitData);
    on<_LoadCreditData>(_onLoadCreditData);
  }
  final DataRepository repository;

  @override
  void onTransition(Transition<DataEvent, DataState> transition) {
    logger.d(
        "${transition.currentState.transactions} <<<<===========>>>> ${transition.nextState.transactions}");
    super.onTransition(transition);
  }

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
          return emit(
            state.copyWith(
              data: data,
              transactions: data.transaction,
            ),
          );
        },
        (_) => logger.e("Something happend"),
      );
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> _onLoadDebitData(
    _LoadDebitData event,
    Emitter<DataState> emit,
  ) async {
    if (state.data == null) return;
    List<TransactionModel> filteredList = [];
    // final list = List<TransactionModel>.of(state.data!.transaction);

    for (var element in state.data!.transaction) {
      if (element.type == TransactionType.D) {
        filteredList.add(element);
      }
    }
    emit(
      state.copyWith(
        transactions: filteredList,
        selectedType: CustomTabType.debit,
      ),
    );
  }

  Future<void> _onLoadCreditData(
    _LoadCreditData event,
    Emitter<DataState> emit,
  ) async {
    if (state.data == null) return;
    List<TransactionModel> filteredList = [];
    // final list = List<TransactionModel>.of(state.data!.transaction);

    for (var element in state.data!.transaction) {
      if (element.type == TransactionType.C) {
        filteredList.add(element);
      }
    }
    emit(
      state.copyWith(
        transactions: filteredList,
        selectedType: CustomTabType.credit,
      ),
    );
  }

  Future<void> _onLoadAllData(
    _LoadAllData event,
    Emitter<DataState> emit,
  ) async {
    if (state.data == null) return;
    final list = List<TransactionModel>.of(state.data!.transaction);

    emit(state.copyWith(transactions: list, selectedType: CustomTabType.all));
  }
}
