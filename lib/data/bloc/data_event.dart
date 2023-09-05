part of 'data_bloc.dart';

@freezed
class DataEvent with _$DataEvent {
  const factory DataEvent.onLoadData() = _onLoadData;
  const factory DataEvent.onLoadAllData() = _LoadAllData;
  const factory DataEvent.onLoadDebitData() = _LoadDebitData;
  const factory DataEvent.onLoadCreditData() = _LoadCreditData;
}
