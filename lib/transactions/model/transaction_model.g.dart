// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      id: json['customerID'] as String,
      date: json['transactionDate'] as String,
      amount: json['transactionAmount'] as num,
      type: $enumDecode(_$TransactionTypeEnumMap, json['transactionDirection']),
      narration: json['transactionNarration'] as String,
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'customerID': instance.id,
      'transactionDate': instance.date,
      'transactionAmount': instance.amount,
      'transactionDirection': _$TransactionTypeEnumMap[instance.type]!,
      'transactionNarration': instance.narration,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.D: 'D',
  TransactionType.C: 'C',
};
