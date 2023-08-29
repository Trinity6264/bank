// ignore_for_file: invalid_annotation_target

import 'package:bank/customer/model/customer_model.dart';
import 'package:bank/transactions/model/transaction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  factory DataModel({
    @JsonKey(name: "customerStaticData") @Default([]) List<CustomerModel> user,
    @JsonKey(name: "customerTransactionData")
    @Default([])
    List<TransactionModel> transaction,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
