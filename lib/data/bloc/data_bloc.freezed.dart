// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadData,
    required TResult Function() onLoadAllData,
    required TResult Function() onLoadDebitData,
    required TResult Function() onLoadCreditData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoadData,
    TResult? Function()? onLoadAllData,
    TResult? Function()? onLoadDebitData,
    TResult? Function()? onLoadCreditData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadData,
    TResult Function()? onLoadAllData,
    TResult Function()? onLoadDebitData,
    TResult Function()? onLoadCreditData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onLoadData value) onLoadData,
    required TResult Function(_LoadAllData value) onLoadAllData,
    required TResult Function(_LoadDebitData value) onLoadDebitData,
    required TResult Function(_LoadCreditData value) onLoadCreditData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onLoadData value)? onLoadData,
    TResult? Function(_LoadAllData value)? onLoadAllData,
    TResult? Function(_LoadDebitData value)? onLoadDebitData,
    TResult? Function(_LoadCreditData value)? onLoadCreditData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onLoadData value)? onLoadData,
    TResult Function(_LoadAllData value)? onLoadAllData,
    TResult Function(_LoadDebitData value)? onLoadDebitData,
    TResult Function(_LoadCreditData value)? onLoadCreditData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEventCopyWith<$Res> {
  factory $DataEventCopyWith(DataEvent value, $Res Function(DataEvent) then) =
      _$DataEventCopyWithImpl<$Res, DataEvent>;
}

/// @nodoc
class _$DataEventCopyWithImpl<$Res, $Val extends DataEvent>
    implements $DataEventCopyWith<$Res> {
  _$DataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_onLoadDataCopyWith<$Res> {
  factory _$$_onLoadDataCopyWith(
          _$_onLoadData value, $Res Function(_$_onLoadData) then) =
      __$$_onLoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_onLoadDataCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$_onLoadData>
    implements _$$_onLoadDataCopyWith<$Res> {
  __$$_onLoadDataCopyWithImpl(
      _$_onLoadData _value, $Res Function(_$_onLoadData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_onLoadData implements _onLoadData {
  const _$_onLoadData();

  @override
  String toString() {
    return 'DataEvent.onLoadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_onLoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadData,
    required TResult Function() onLoadAllData,
    required TResult Function() onLoadDebitData,
    required TResult Function() onLoadCreditData,
  }) {
    return onLoadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoadData,
    TResult? Function()? onLoadAllData,
    TResult? Function()? onLoadDebitData,
    TResult? Function()? onLoadCreditData,
  }) {
    return onLoadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadData,
    TResult Function()? onLoadAllData,
    TResult Function()? onLoadDebitData,
    TResult Function()? onLoadCreditData,
    required TResult orElse(),
  }) {
    if (onLoadData != null) {
      return onLoadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onLoadData value) onLoadData,
    required TResult Function(_LoadAllData value) onLoadAllData,
    required TResult Function(_LoadDebitData value) onLoadDebitData,
    required TResult Function(_LoadCreditData value) onLoadCreditData,
  }) {
    return onLoadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onLoadData value)? onLoadData,
    TResult? Function(_LoadAllData value)? onLoadAllData,
    TResult? Function(_LoadDebitData value)? onLoadDebitData,
    TResult? Function(_LoadCreditData value)? onLoadCreditData,
  }) {
    return onLoadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onLoadData value)? onLoadData,
    TResult Function(_LoadAllData value)? onLoadAllData,
    TResult Function(_LoadDebitData value)? onLoadDebitData,
    TResult Function(_LoadCreditData value)? onLoadCreditData,
    required TResult orElse(),
  }) {
    if (onLoadData != null) {
      return onLoadData(this);
    }
    return orElse();
  }
}

abstract class _onLoadData implements DataEvent {
  const factory _onLoadData() = _$_onLoadData;
}

/// @nodoc
abstract class _$$_LoadAllDataCopyWith<$Res> {
  factory _$$_LoadAllDataCopyWith(
          _$_LoadAllData value, $Res Function(_$_LoadAllData) then) =
      __$$_LoadAllDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadAllDataCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$_LoadAllData>
    implements _$$_LoadAllDataCopyWith<$Res> {
  __$$_LoadAllDataCopyWithImpl(
      _$_LoadAllData _value, $Res Function(_$_LoadAllData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadAllData implements _LoadAllData {
  const _$_LoadAllData();

  @override
  String toString() {
    return 'DataEvent.onLoadAllData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadAllData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadData,
    required TResult Function() onLoadAllData,
    required TResult Function() onLoadDebitData,
    required TResult Function() onLoadCreditData,
  }) {
    return onLoadAllData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoadData,
    TResult? Function()? onLoadAllData,
    TResult? Function()? onLoadDebitData,
    TResult? Function()? onLoadCreditData,
  }) {
    return onLoadAllData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadData,
    TResult Function()? onLoadAllData,
    TResult Function()? onLoadDebitData,
    TResult Function()? onLoadCreditData,
    required TResult orElse(),
  }) {
    if (onLoadAllData != null) {
      return onLoadAllData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onLoadData value) onLoadData,
    required TResult Function(_LoadAllData value) onLoadAllData,
    required TResult Function(_LoadDebitData value) onLoadDebitData,
    required TResult Function(_LoadCreditData value) onLoadCreditData,
  }) {
    return onLoadAllData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onLoadData value)? onLoadData,
    TResult? Function(_LoadAllData value)? onLoadAllData,
    TResult? Function(_LoadDebitData value)? onLoadDebitData,
    TResult? Function(_LoadCreditData value)? onLoadCreditData,
  }) {
    return onLoadAllData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onLoadData value)? onLoadData,
    TResult Function(_LoadAllData value)? onLoadAllData,
    TResult Function(_LoadDebitData value)? onLoadDebitData,
    TResult Function(_LoadCreditData value)? onLoadCreditData,
    required TResult orElse(),
  }) {
    if (onLoadAllData != null) {
      return onLoadAllData(this);
    }
    return orElse();
  }
}

abstract class _LoadAllData implements DataEvent {
  const factory _LoadAllData() = _$_LoadAllData;
}

/// @nodoc
abstract class _$$_LoadDebitDataCopyWith<$Res> {
  factory _$$_LoadDebitDataCopyWith(
          _$_LoadDebitData value, $Res Function(_$_LoadDebitData) then) =
      __$$_LoadDebitDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadDebitDataCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$_LoadDebitData>
    implements _$$_LoadDebitDataCopyWith<$Res> {
  __$$_LoadDebitDataCopyWithImpl(
      _$_LoadDebitData _value, $Res Function(_$_LoadDebitData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadDebitData implements _LoadDebitData {
  const _$_LoadDebitData();

  @override
  String toString() {
    return 'DataEvent.onLoadDebitData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadDebitData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadData,
    required TResult Function() onLoadAllData,
    required TResult Function() onLoadDebitData,
    required TResult Function() onLoadCreditData,
  }) {
    return onLoadDebitData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoadData,
    TResult? Function()? onLoadAllData,
    TResult? Function()? onLoadDebitData,
    TResult? Function()? onLoadCreditData,
  }) {
    return onLoadDebitData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadData,
    TResult Function()? onLoadAllData,
    TResult Function()? onLoadDebitData,
    TResult Function()? onLoadCreditData,
    required TResult orElse(),
  }) {
    if (onLoadDebitData != null) {
      return onLoadDebitData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onLoadData value) onLoadData,
    required TResult Function(_LoadAllData value) onLoadAllData,
    required TResult Function(_LoadDebitData value) onLoadDebitData,
    required TResult Function(_LoadCreditData value) onLoadCreditData,
  }) {
    return onLoadDebitData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onLoadData value)? onLoadData,
    TResult? Function(_LoadAllData value)? onLoadAllData,
    TResult? Function(_LoadDebitData value)? onLoadDebitData,
    TResult? Function(_LoadCreditData value)? onLoadCreditData,
  }) {
    return onLoadDebitData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onLoadData value)? onLoadData,
    TResult Function(_LoadAllData value)? onLoadAllData,
    TResult Function(_LoadDebitData value)? onLoadDebitData,
    TResult Function(_LoadCreditData value)? onLoadCreditData,
    required TResult orElse(),
  }) {
    if (onLoadDebitData != null) {
      return onLoadDebitData(this);
    }
    return orElse();
  }
}

abstract class _LoadDebitData implements DataEvent {
  const factory _LoadDebitData() = _$_LoadDebitData;
}

/// @nodoc
abstract class _$$_LoadCreditDataCopyWith<$Res> {
  factory _$$_LoadCreditDataCopyWith(
          _$_LoadCreditData value, $Res Function(_$_LoadCreditData) then) =
      __$$_LoadCreditDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCreditDataCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$_LoadCreditData>
    implements _$$_LoadCreditDataCopyWith<$Res> {
  __$$_LoadCreditDataCopyWithImpl(
      _$_LoadCreditData _value, $Res Function(_$_LoadCreditData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadCreditData implements _LoadCreditData {
  const _$_LoadCreditData();

  @override
  String toString() {
    return 'DataEvent.onLoadCreditData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadCreditData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadData,
    required TResult Function() onLoadAllData,
    required TResult Function() onLoadDebitData,
    required TResult Function() onLoadCreditData,
  }) {
    return onLoadCreditData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoadData,
    TResult? Function()? onLoadAllData,
    TResult? Function()? onLoadDebitData,
    TResult? Function()? onLoadCreditData,
  }) {
    return onLoadCreditData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadData,
    TResult Function()? onLoadAllData,
    TResult Function()? onLoadDebitData,
    TResult Function()? onLoadCreditData,
    required TResult orElse(),
  }) {
    if (onLoadCreditData != null) {
      return onLoadCreditData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onLoadData value) onLoadData,
    required TResult Function(_LoadAllData value) onLoadAllData,
    required TResult Function(_LoadDebitData value) onLoadDebitData,
    required TResult Function(_LoadCreditData value) onLoadCreditData,
  }) {
    return onLoadCreditData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onLoadData value)? onLoadData,
    TResult? Function(_LoadAllData value)? onLoadAllData,
    TResult? Function(_LoadDebitData value)? onLoadDebitData,
    TResult? Function(_LoadCreditData value)? onLoadCreditData,
  }) {
    return onLoadCreditData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onLoadData value)? onLoadData,
    TResult Function(_LoadAllData value)? onLoadAllData,
    TResult Function(_LoadDebitData value)? onLoadDebitData,
    TResult Function(_LoadCreditData value)? onLoadCreditData,
    required TResult orElse(),
  }) {
    if (onLoadCreditData != null) {
      return onLoadCreditData(this);
    }
    return orElse();
  }
}

abstract class _LoadCreditData implements DataEvent {
  const factory _LoadCreditData() = _$_LoadCreditData;
}

/// @nodoc
mixin _$DataState {
  DataModel? get data => throw _privateConstructorUsedError;
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  CustomTabType get selectedType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataStateCopyWith<DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res, DataState>;
  @useResult
  $Res call(
      {DataModel? data,
      List<TransactionModel> transactions,
      CustomTabType selectedType});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res, $Val extends DataState>
    implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? transactions = null,
    Object? selectedType = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as CustomTabType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataStateCopyWith<$Res> implements $DataStateCopyWith<$Res> {
  factory _$$_DataStateCopyWith(
          _$_DataState value, $Res Function(_$_DataState) then) =
      __$$_DataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataModel? data,
      List<TransactionModel> transactions,
      CustomTabType selectedType});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DataStateCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$_DataState>
    implements _$$_DataStateCopyWith<$Res> {
  __$$_DataStateCopyWithImpl(
      _$_DataState _value, $Res Function(_$_DataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? transactions = null,
    Object? selectedType = null,
  }) {
    return _then(_$_DataState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as CustomTabType,
    ));
  }
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState(
      {this.data,
      final List<TransactionModel> transactions = const [],
      this.selectedType = CustomTabType.all})
      : _transactions = transactions;

  @override
  final DataModel? data;
  final List<TransactionModel> _transactions;
  @override
  @JsonKey()
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final CustomTabType selectedType;

  @override
  String toString() {
    return 'DataState(data: $data, transactions: $transactions, selectedType: $selectedType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataState &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data,
      const DeepCollectionEquality().hash(_transactions), selectedType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      __$$_DataStateCopyWithImpl<_$_DataState>(this, _$identity);
}

abstract class _DataState implements DataState {
  const factory _DataState(
      {final DataModel? data,
      final List<TransactionModel> transactions,
      final CustomTabType selectedType}) = _$_DataState;

  @override
  DataModel? get data;
  @override
  List<TransactionModel> get transactions;
  @override
  CustomTabType get selectedType;
  @override
  @JsonKey(ignore: true)
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}
