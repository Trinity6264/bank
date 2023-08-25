// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerModel _$$_CustomerModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerModel(
      id: json['customerID'] as String,
      name: json['customerName'] as String,
      gender: json['gender'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_CustomerModelToJson(_$_CustomerModel instance) =>
    <String, dynamic>{
      'customerID': instance.id,
      'customerName': instance.name,
      'gender': instance.gender,
      'title': instance.title,
    };
