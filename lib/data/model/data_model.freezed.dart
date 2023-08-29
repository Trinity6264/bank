// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "customerStaticData")
  List<CustomerModel> get user => throw _privateConstructorUsedError;
  @JsonKey(name: "customerTransactionData")
  List<TransactionModel> get transaction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "customerStaticData") List<CustomerModel> user,
      @JsonKey(name: "customerTransactionData")
      List<TransactionModel> transaction});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$$_DataModelCopyWith(
          _$_DataModel value, $Res Function(_$_DataModel) then) =
      __$$_DataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customerStaticData") List<CustomerModel> user,
      @JsonKey(name: "customerTransactionData")
      List<TransactionModel> transaction});
}

/// @nodoc
class __$$_DataModelCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$_DataModel>
    implements _$$_DataModelCopyWith<$Res> {
  __$$_DataModelCopyWithImpl(
      _$_DataModel _value, $Res Function(_$_DataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? transaction = null,
  }) {
    return _then(_$_DataModel(
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      transaction: null == transaction
          ? _value._transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel implements _DataModel {
  _$_DataModel(
      {@JsonKey(name: "customerStaticData")
      final List<CustomerModel> user = const [],
      @JsonKey(name: "customerTransactionData")
      final List<TransactionModel> transaction = const []})
      : _user = user,
        _transaction = transaction;

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  final List<CustomerModel> _user;
  @override
  @JsonKey(name: "customerStaticData")
  List<CustomerModel> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  final List<TransactionModel> _transaction;
  @override
  @JsonKey(name: "customerTransactionData")
  List<TransactionModel> get transaction {
    if (_transaction is EqualUnmodifiableListView) return _transaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transaction);
  }

  @override
  String toString() {
    return 'DataModel(user: $user, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModel &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality()
                .equals(other._transaction, _transaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_transaction));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      __$$_DataModelCopyWithImpl<_$_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  factory _DataModel(
      {@JsonKey(name: "customerStaticData") final List<CustomerModel> user,
      @JsonKey(name: "customerTransactionData")
      final List<TransactionModel> transaction}) = _$_DataModel;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  @JsonKey(name: "customerStaticData")
  List<CustomerModel> get user;
  @override
  @JsonKey(name: "customerTransactionData")
  List<TransactionModel> get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
