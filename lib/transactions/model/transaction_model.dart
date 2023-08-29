// ignore_for_file: invalid_annotation_target

import 'package:bank/enums/transaction_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  factory TransactionModel({
    @JsonKey(name: "customerID") required String id,
    @JsonKey(name: "transactionDate") required String date,
    @JsonKey(name: "transactionAmount") required num amount,
    @JsonKey(name: "transactionDirection") required TransactionType type,
    @JsonKey(name: "transactionNarration") required String narration,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
