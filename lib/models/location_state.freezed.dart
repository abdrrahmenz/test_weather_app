// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateInitial value) initial,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateInitial value)? initial,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateInitial value)? initial,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationStateInitialImplCopyWith<$Res> {
  factory _$$LocationStateInitialImplCopyWith(_$LocationStateInitialImpl value,
          $Res Function(_$LocationStateInitialImpl) then) =
      __$$LocationStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStateInitialImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateInitialImpl>
    implements _$$LocationStateInitialImplCopyWith<$Res> {
  __$$LocationStateInitialImplCopyWithImpl(_$LocationStateInitialImpl _value,
      $Res Function(_$LocationStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationStateInitialImpl implements LocationStateInitial {
  const _$LocationStateInitialImpl();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateInitial value) initial,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateInitial value)? initial,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateInitial value)? initial,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationStateInitial implements LocationState {
  const factory LocationStateInitial() = _$LocationStateInitialImpl;
}

/// @nodoc
abstract class _$$LocationStateLoadingImplCopyWith<$Res> {
  factory _$$LocationStateLoadingImplCopyWith(_$LocationStateLoadingImpl value,
          $Res Function(_$LocationStateLoadingImpl) then) =
      __$$LocationStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStateLoadingImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateLoadingImpl>
    implements _$$LocationStateLoadingImplCopyWith<$Res> {
  __$$LocationStateLoadingImplCopyWithImpl(_$LocationStateLoadingImpl _value,
      $Res Function(_$LocationStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationStateLoadingImpl implements LocationStateLoading {
  const _$LocationStateLoadingImpl();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateInitial value) initial,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateInitial value)? initial,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateInitial value)? initial,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationStateLoading implements LocationState {
  const factory LocationStateLoading() = _$LocationStateLoadingImpl;
}

/// @nodoc
abstract class _$$LocationStateLoadedImplCopyWith<$Res> {
  factory _$$LocationStateLoadedImplCopyWith(_$LocationStateLoadedImpl value,
          $Res Function(_$LocationStateLoadedImpl) then) =
      __$$LocationStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LocationModel> data});
}

/// @nodoc
class __$$LocationStateLoadedImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateLoadedImpl>
    implements _$$LocationStateLoadedImplCopyWith<$Res> {
  __$$LocationStateLoadedImplCopyWithImpl(_$LocationStateLoadedImpl _value,
      $Res Function(_$LocationStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LocationStateLoadedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _$LocationStateLoadedImpl implements LocationStateLoaded {
  const _$LocationStateLoadedImpl(final List<LocationModel> data)
      : _data = data;

  final List<LocationModel> _data;
  @override
  List<LocationModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'LocationState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateLoadedImplCopyWith<_$LocationStateLoadedImpl> get copyWith =>
      __$$LocationStateLoadedImplCopyWithImpl<_$LocationStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateInitial value) initial,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateInitial value)? initial,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateInitial value)? initial,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LocationStateLoaded implements LocationState {
  const factory LocationStateLoaded(final List<LocationModel> data) =
      _$LocationStateLoadedImpl;

  List<LocationModel> get data;
  @JsonKey(ignore: true)
  _$$LocationStateLoadedImplCopyWith<_$LocationStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationStateErrorImplCopyWith<$Res> {
  factory _$$LocationStateErrorImplCopyWith(_$LocationStateErrorImpl value,
          $Res Function(_$LocationStateErrorImpl) then) =
      __$$LocationStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocationStateErrorImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateErrorImpl>
    implements _$$LocationStateErrorImplCopyWith<$Res> {
  __$$LocationStateErrorImplCopyWithImpl(_$LocationStateErrorImpl _value,
      $Res Function(_$LocationStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocationStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationStateErrorImpl implements LocationStateError {
  const _$LocationStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LocationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateErrorImplCopyWith<_$LocationStateErrorImpl> get copyWith =>
      __$$LocationStateErrorImplCopyWithImpl<_$LocationStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateInitial value) initial,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateInitial value)? initial,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateInitial value)? initial,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationStateError implements LocationState {
  const factory LocationStateError(final String message) =
      _$LocationStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LocationStateErrorImplCopyWith<_$LocationStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
