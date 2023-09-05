part of 'data_bloc.dart';

@freezed
class DataState with _$DataState {
  const factory DataState({
    DataModel? data,
    @Default([]) List<TransactionModel> transactions,
    @Default(CustomTabType.all) CustomTabType selectedType,
  }) = _DataState;
}
