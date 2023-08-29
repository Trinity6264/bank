// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      user: (json['customerStaticData'] as List<dynamic>?)
              ?.map((e) => CustomerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      transaction: (json['customerTransactionData'] as List<dynamic>?)
              ?.map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'customerStaticData': instance.user,
      'customerTransactionData': instance.transaction,
    };
