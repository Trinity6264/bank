// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  @JsonKey(name: "customerID")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionDate")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionAmount")
  num get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionDirection")
  TransactionType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionNarration")
  String get narration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "customerID") String id,
      @JsonKey(name: "transactionDate") String date,
      @JsonKey(name: "transactionAmount") num amount,
      @JsonKey(name: "transactionDirection") TransactionType type,
      @JsonKey(name: "transactionNarration") String narration});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
    Object? type = null,
    Object? narration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      narration: null == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customerID") String id,
      @JsonKey(name: "transactionDate") String date,
      @JsonKey(name: "transactionAmount") num amount,
      @JsonKey(name: "transactionDirection") TransactionType type,
      @JsonKey(name: "transactionNarration") String narration});
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$_TransactionModel>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
    Object? type = null,
    Object? narration = null,
  }) {
    return _then(_$_TransactionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      narration: null == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel implements _TransactionModel {
  _$_TransactionModel(
      {@JsonKey(name: "customerID") required this.id,
      @JsonKey(name: "transactionDate") required this.date,
      @JsonKey(name: "transactionAmount") required this.amount,
      @JsonKey(name: "transactionDirection") required this.type,
      @JsonKey(name: "transactionNarration") required this.narration});

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  @JsonKey(name: "customerID")
  final String id;
  @override
  @JsonKey(name: "transactionDate")
  final String date;
  @override
  @JsonKey(name: "transactionAmount")
  final num amount;
  @override
  @JsonKey(name: "transactionDirection")
  final TransactionType type;
  @override
  @JsonKey(name: "transactionNarration")
  final String narration;

  @override
  String toString() {
    return 'TransactionModel(id: $id, date: $date, amount: $amount, type: $type, narration: $narration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.narration, narration) ||
                other.narration == narration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, amount, type, narration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  factory _TransactionModel(
      {@JsonKey(name: "customerID") required final String id,
      @JsonKey(name: "transactionDate") required final String date,
      @JsonKey(name: "transactionAmount") required final num amount,
      @JsonKey(name: "transactionDirection")
      required final TransactionType type,
      @JsonKey(name: "transactionNarration")
      required final String narration}) = _$_TransactionModel;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  @JsonKey(name: "customerID")
  String get id;
  @override
  @JsonKey(name: "transactionDate")
  String get date;
  @override
  @JsonKey(name: "transactionAmount")
  num get amount;
  @override
  @JsonKey(name: "transactionDirection")
  TransactionType get type;
  @override
  @JsonKey(name: "transactionNarration")
  String get narration;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
