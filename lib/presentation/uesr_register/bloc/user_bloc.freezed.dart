// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password,
            dynamic mobileNumber, String name, String avathar)
        onRegisterCliked,
    required TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)
        onRegisterOtpCliked,
    required TResult Function() onClikedOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult? Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult? Function()? onClikedOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult Function()? onClikedOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnRegisterCliked value) onRegisterCliked,
    required TResult Function(_OnRegisterOtpCliked value) onRegisterOtpCliked,
    required TResult Function(_OnClikedOtp value) onClikedOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult? Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult? Function(_OnClikedOtp value)? onClikedOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult Function(_OnClikedOtp value)? onClikedOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password,
            dynamic mobileNumber, String name, String avathar)
        onRegisterCliked,
    required TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)
        onRegisterOtpCliked,
    required TResult Function() onClikedOtp,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult? Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult? Function()? onClikedOtp,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult Function()? onClikedOtp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnRegisterCliked value) onRegisterCliked,
    required TResult Function(_OnRegisterOtpCliked value) onRegisterOtpCliked,
    required TResult Function(_OnClikedOtp value) onClikedOtp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult? Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult? Function(_OnClikedOtp value)? onClikedOtp,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult Function(_OnClikedOtp value)? onClikedOtp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnRegisterClikedImplCopyWith<$Res> {
  factory _$$OnRegisterClikedImplCopyWith(_$OnRegisterClikedImpl value,
          $Res Function(_$OnRegisterClikedImpl) then) =
      __$$OnRegisterClikedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      dynamic mobileNumber,
      String name,
      String avathar});
}

/// @nodoc
class __$$OnRegisterClikedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$OnRegisterClikedImpl>
    implements _$$OnRegisterClikedImplCopyWith<$Res> {
  __$$OnRegisterClikedImplCopyWithImpl(_$OnRegisterClikedImpl _value,
      $Res Function(_$OnRegisterClikedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? mobileNumber = freezed,
    Object? name = null,
    Object? avathar = null,
  }) {
    return _then(_$OnRegisterClikedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avathar: null == avathar
          ? _value.avathar
          : avathar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnRegisterClikedImpl implements _OnRegisterCliked {
  const _$OnRegisterClikedImpl(
      {required this.email,
      required this.password,
      required this.mobileNumber,
      required this.name,
      required this.avathar});

  @override
  final String email;
  @override
  final String password;
  @override
  final dynamic mobileNumber;
  @override
  final String name;
  @override
  final String avathar;

  @override
  String toString() {
    return 'UserEvent.onRegisterCliked(email: $email, password: $password, mobileNumber: $mobileNumber, name: $name, avathar: $avathar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRegisterClikedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avathar, avathar) || other.avathar == avathar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password,
      const DeepCollectionEquality().hash(mobileNumber), name, avathar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRegisterClikedImplCopyWith<_$OnRegisterClikedImpl> get copyWith =>
      __$$OnRegisterClikedImplCopyWithImpl<_$OnRegisterClikedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password,
            dynamic mobileNumber, String name, String avathar)
        onRegisterCliked,
    required TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)
        onRegisterOtpCliked,
    required TResult Function() onClikedOtp,
  }) {
    return onRegisterCliked(email, password, mobileNumber, name, avathar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult? Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult? Function()? onClikedOtp,
  }) {
    return onRegisterCliked?.call(email, password, mobileNumber, name, avathar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult Function()? onClikedOtp,
    required TResult orElse(),
  }) {
    if (onRegisterCliked != null) {
      return onRegisterCliked(email, password, mobileNumber, name, avathar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnRegisterCliked value) onRegisterCliked,
    required TResult Function(_OnRegisterOtpCliked value) onRegisterOtpCliked,
    required TResult Function(_OnClikedOtp value) onClikedOtp,
  }) {
    return onRegisterCliked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult? Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult? Function(_OnClikedOtp value)? onClikedOtp,
  }) {
    return onRegisterCliked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult Function(_OnClikedOtp value)? onClikedOtp,
    required TResult orElse(),
  }) {
    if (onRegisterCliked != null) {
      return onRegisterCliked(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterCliked implements UserEvent {
  const factory _OnRegisterCliked(
      {required final String email,
      required final String password,
      required final dynamic mobileNumber,
      required final String name,
      required final String avathar}) = _$OnRegisterClikedImpl;

  String get email;
  String get password;
  dynamic get mobileNumber;
  String get name;
  String get avathar;
  @JsonKey(ignore: true)
  _$$OnRegisterClikedImplCopyWith<_$OnRegisterClikedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRegisterOtpClikedImplCopyWith<$Res> {
  factory _$$OnRegisterOtpClikedImplCopyWith(_$OnRegisterOtpClikedImpl value,
          $Res Function(_$OnRegisterOtpClikedImpl) then) =
      __$$OnRegisterOtpClikedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      dynamic mobileNumber,
      String email,
      String password,
      String otp,
      String avathar});
}

/// @nodoc
class __$$OnRegisterOtpClikedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$OnRegisterOtpClikedImpl>
    implements _$$OnRegisterOtpClikedImplCopyWith<$Res> {
  __$$OnRegisterOtpClikedImplCopyWithImpl(_$OnRegisterOtpClikedImpl _value,
      $Res Function(_$OnRegisterOtpClikedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mobileNumber = freezed,
    Object? email = null,
    Object? password = null,
    Object? otp = null,
    Object? avathar = null,
  }) {
    return _then(_$OnRegisterOtpClikedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      avathar: null == avathar
          ? _value.avathar
          : avathar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnRegisterOtpClikedImpl implements _OnRegisterOtpCliked {
  const _$OnRegisterOtpClikedImpl(
      {required this.name,
      required this.mobileNumber,
      required this.email,
      required this.password,
      required this.otp,
      required this.avathar});

  @override
  final String name;
  @override
  final dynamic mobileNumber;
  @override
  final String email;
  @override
  final String password;
  @override
  final String otp;
  @override
  final String avathar;

  @override
  String toString() {
    return 'UserEvent.onRegisterOtpCliked(name: $name, mobileNumber: $mobileNumber, email: $email, password: $password, otp: $otp, avathar: $avathar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRegisterOtpClikedImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.avathar, avathar) || other.avathar == avathar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(mobileNumber),
      email,
      password,
      otp,
      avathar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRegisterOtpClikedImplCopyWith<_$OnRegisterOtpClikedImpl> get copyWith =>
      __$$OnRegisterOtpClikedImplCopyWithImpl<_$OnRegisterOtpClikedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password,
            dynamic mobileNumber, String name, String avathar)
        onRegisterCliked,
    required TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)
        onRegisterOtpCliked,
    required TResult Function() onClikedOtp,
  }) {
    return onRegisterOtpCliked(
        name, mobileNumber, email, password, otp, avathar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult? Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult? Function()? onClikedOtp,
  }) {
    return onRegisterOtpCliked?.call(
        name, mobileNumber, email, password, otp, avathar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult Function()? onClikedOtp,
    required TResult orElse(),
  }) {
    if (onRegisterOtpCliked != null) {
      return onRegisterOtpCliked(
          name, mobileNumber, email, password, otp, avathar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnRegisterCliked value) onRegisterCliked,
    required TResult Function(_OnRegisterOtpCliked value) onRegisterOtpCliked,
    required TResult Function(_OnClikedOtp value) onClikedOtp,
  }) {
    return onRegisterOtpCliked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult? Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult? Function(_OnClikedOtp value)? onClikedOtp,
  }) {
    return onRegisterOtpCliked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult Function(_OnClikedOtp value)? onClikedOtp,
    required TResult orElse(),
  }) {
    if (onRegisterOtpCliked != null) {
      return onRegisterOtpCliked(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterOtpCliked implements UserEvent {
  const factory _OnRegisterOtpCliked(
      {required final String name,
      required final dynamic mobileNumber,
      required final String email,
      required final String password,
      required final String otp,
      required final String avathar}) = _$OnRegisterOtpClikedImpl;

  String get name;
  dynamic get mobileNumber;
  String get email;
  String get password;
  String get otp;
  String get avathar;
  @JsonKey(ignore: true)
  _$$OnRegisterOtpClikedImplCopyWith<_$OnRegisterOtpClikedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnClikedOtpImplCopyWith<$Res> {
  factory _$$OnClikedOtpImplCopyWith(
          _$OnClikedOtpImpl value, $Res Function(_$OnClikedOtpImpl) then) =
      __$$OnClikedOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnClikedOtpImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$OnClikedOtpImpl>
    implements _$$OnClikedOtpImplCopyWith<$Res> {
  __$$OnClikedOtpImplCopyWithImpl(
      _$OnClikedOtpImpl _value, $Res Function(_$OnClikedOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnClikedOtpImpl implements _OnClikedOtp {
  const _$OnClikedOtpImpl();

  @override
  String toString() {
    return 'UserEvent.onClikedOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnClikedOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password,
            dynamic mobileNumber, String name, String avathar)
        onRegisterCliked,
    required TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)
        onRegisterOtpCliked,
    required TResult Function() onClikedOtp,
  }) {
    return onClikedOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult? Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult? Function()? onClikedOtp,
  }) {
    return onClikedOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, dynamic mobileNumber,
            String name, String avathar)?
        onRegisterCliked,
    TResult Function(String name, dynamic mobileNumber, String email,
            String password, String otp, String avathar)?
        onRegisterOtpCliked,
    TResult Function()? onClikedOtp,
    required TResult orElse(),
  }) {
    if (onClikedOtp != null) {
      return onClikedOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnRegisterCliked value) onRegisterCliked,
    required TResult Function(_OnRegisterOtpCliked value) onRegisterOtpCliked,
    required TResult Function(_OnClikedOtp value) onClikedOtp,
  }) {
    return onClikedOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult? Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult? Function(_OnClikedOtp value)? onClikedOtp,
  }) {
    return onClikedOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnRegisterCliked value)? onRegisterCliked,
    TResult Function(_OnRegisterOtpCliked value)? onRegisterOtpCliked,
    TResult Function(_OnClikedOtp value)? onClikedOtp,
    required TResult orElse(),
  }) {
    if (onClikedOtp != null) {
      return onClikedOtp(this);
    }
    return orElse();
  }
}

abstract class _OnClikedOtp implements UserEvent {
  const factory _OnClikedOtp() = _$OnClikedOtpImpl;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserSignUpRes response) userRegisterSuccess,
    required TResult Function(String error) userRegisterFail,
    required TResult Function(OtpUserRes response) userRegisterOtpSuccess,
    required TResult Function(String error) userRegisterOtpFail,
    required TResult Function(bool otp) shouldShowOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserSignUpRes response)? userRegisterSuccess,
    TResult? Function(String error)? userRegisterFail,
    TResult? Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult? Function(String error)? userRegisterOtpFail,
    TResult? Function(bool otp)? shouldShowOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserSignUpRes response)? userRegisterSuccess,
    TResult Function(String error)? userRegisterFail,
    TResult Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult Function(String error)? userRegisterOtpFail,
    TResult Function(bool otp)? shouldShowOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserRegisterSuccess value) userRegisterSuccess,
    required TResult Function(_UserRegisterFail value) userRegisterFail,
    required TResult Function(_UserRegisterOtpSuccess value)
        userRegisterOtpSuccess,
    required TResult Function(_UserRegisterOtpFail value) userRegisterOtpFail,
    required TResult Function(_ShouldShowOtp value) shouldShowOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult? Function(_UserRegisterFail value)? userRegisterFail,
    TResult? Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult? Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult? Function(_ShouldShowOtp value)? shouldShowOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult Function(_UserRegisterFail value)? userRegisterFail,
    TResult Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult Function(_ShouldShowOtp value)? shouldShowOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserSignUpRes response) userRegisterSuccess,
    required TResult Function(String error) userRegisterFail,
    required TResult Function(OtpUserRes response) userRegisterOtpSuccess,
    required TResult Function(String error) userRegisterOtpFail,
    required TResult Function(bool otp) shouldShowOtp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserSignUpRes response)? userRegisterSuccess,
    TResult? Function(String error)? userRegisterFail,
    TResult? Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult? Function(String error)? userRegisterOtpFail,
    TResult? Function(bool otp)? shouldShowOtp,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserSignUpRes response)? userRegisterSuccess,
    TResult Function(String error)? userRegisterFail,
    TResult Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult Function(String error)? userRegisterOtpFail,
    TResult Function(bool otp)? shouldShowOtp,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserRegisterSuccess value) userRegisterSuccess,
    required TResult Function(_UserRegisterFail value) userRegisterFail,
    required TResult Function(_UserRegisterOtpSuccess value)
        userRegisterOtpSuccess,
    required TResult Function(_UserRegisterOtpFail value) userRegisterOtpFail,
    required TResult Function(_ShouldShowOtp value) shouldShowOtp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult? Function(_UserRegisterFail value)? userRegisterFail,
    TResult? Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult? Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult? Function(_ShouldShowOtp value)? shouldShowOtp,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult Function(_UserRegisterFail value)? userRegisterFail,
    TResult Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult Function(_ShouldShowOtp value)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserSignUpRes response) userRegisterSuccess,
    required TResult Function(String error) userRegisterFail,
    required TResult Function(OtpUserRes response) userRegisterOtpSuccess,
    required TResult Function(String error) userRegisterOtpFail,
    required TResult Function(bool otp) shouldShowOtp,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserSignUpRes response)? userRegisterSuccess,
    TResult? Function(String error)? userRegisterFail,
    TResult? Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult? Function(String error)? userRegisterOtpFail,
    TResult? Function(bool otp)? shouldShowOtp,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserSignUpRes response)? userRegisterSuccess,
    TResult Function(String error)? userRegisterFail,
    TResult Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult Function(String error)? userRegisterOtpFail,
    TResult Function(bool otp)? shouldShowOtp,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserRegisterSuccess value) userRegisterSuccess,
    required TResult Function(_UserRegisterFail value) userRegisterFail,
    required TResult Function(_UserRegisterOtpSuccess value)
        userRegisterOtpSuccess,
    required TResult Function(_UserRegisterOtpFail value) userRegisterOtpFail,
    required TResult Function(_ShouldShowOtp value) shouldShowOtp,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult? Function(_UserRegisterFail value)? userRegisterFail,
    TResult? Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult? Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult? Function(_ShouldShowOtp value)? shouldShowOtp,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult Function(_UserRegisterFail value)? userRegisterFail,
    TResult Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult Function(_ShouldShowOtp value)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UserRegisterSuccessImplCopyWith<$Res> {
  factory _$$UserRegisterSuccessImplCopyWith(_$UserRegisterSuccessImpl value,
          $Res Function(_$UserRegisterSuccessImpl) then) =
      __$$UserRegisterSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserSignUpRes response});
}

/// @nodoc
class __$$UserRegisterSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserRegisterSuccessImpl>
    implements _$$UserRegisterSuccessImplCopyWith<$Res> {
  __$$UserRegisterSuccessImplCopyWithImpl(_$UserRegisterSuccessImpl _value,
      $Res Function(_$UserRegisterSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$UserRegisterSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserSignUpRes,
    ));
  }
}

/// @nodoc

class _$UserRegisterSuccessImpl implements _UserRegisterSuccess {
  const _$UserRegisterSuccessImpl({required this.response});

  @override
  final UserSignUpRes response;

  @override
  String toString() {
    return 'UserState.userRegisterSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterSuccessImplCopyWith<_$UserRegisterSuccessImpl> get copyWith =>
      __$$UserRegisterSuccessImplCopyWithImpl<_$UserRegisterSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserSignUpRes response) userRegisterSuccess,
    required TResult Function(String error) userRegisterFail,
    required TResult Function(OtpUserRes response) userRegisterOtpSuccess,
    required TResult Function(String error) userRegisterOtpFail,
    required TResult Function(bool otp) shouldShowOtp,
  }) {
    return userRegisterSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserSignUpRes response)? userRegisterSuccess,
    TResult? Function(String error)? userRegisterFail,
    TResult? Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult? Function(String error)? userRegisterOtpFail,
    TResult? Function(bool otp)? shouldShowOtp,
  }) {
    return userRegisterSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserSignUpRes response)? userRegisterSuccess,
    TResult Function(String error)? userRegisterFail,
    TResult Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult Function(String error)? userRegisterOtpFail,
    TResult Function(bool otp)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (userRegisterSuccess != null) {
      return userRegisterSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserRegisterSuccess value) userRegisterSuccess,
    required TResult Function(_UserRegisterFail value) userRegisterFail,
    required TResult Function(_UserRegisterOtpSuccess value)
        userRegisterOtpSuccess,
    required TResult Function(_UserRegisterOtpFail value) userRegisterOtpFail,
    required TResult Function(_ShouldShowOtp value) shouldShowOtp,
  }) {
    return userRegisterSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult? Function(_UserRegisterFail value)? userRegisterFail,
    TResult? Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult? Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult? Function(_ShouldShowOtp value)? shouldShowOtp,
  }) {
    return userRegisterSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult Function(_UserRegisterFail value)? userRegisterFail,
    TResult Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult Function(_ShouldShowOtp value)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (userRegisterSuccess != null) {
      return userRegisterSuccess(this);
    }
    return orElse();
  }
}

abstract class _UserRegisterSuccess implements UserState {
  const factory _UserRegisterSuccess({required final UserSignUpRes response}) =
      _$UserRegisterSuccessImpl;

  UserSignUpRes get response;
  @JsonKey(ignore: true)
  _$$UserRegisterSuccessImplCopyWith<_$UserRegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegisterFailImplCopyWith<$Res> {
  factory _$$UserRegisterFailImplCopyWith(_$UserRegisterFailImpl value,
          $Res Function(_$UserRegisterFailImpl) then) =
      __$$UserRegisterFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UserRegisterFailImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserRegisterFailImpl>
    implements _$$UserRegisterFailImplCopyWith<$Res> {
  __$$UserRegisterFailImplCopyWithImpl(_$UserRegisterFailImpl _value,
      $Res Function(_$UserRegisterFailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UserRegisterFailImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserRegisterFailImpl implements _UserRegisterFail {
  const _$UserRegisterFailImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserState.userRegisterFail(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterFailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterFailImplCopyWith<_$UserRegisterFailImpl> get copyWith =>
      __$$UserRegisterFailImplCopyWithImpl<_$UserRegisterFailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserSignUpRes response) userRegisterSuccess,
    required TResult Function(String error) userRegisterFail,
    required TResult Function(OtpUserRes response) userRegisterOtpSuccess,
    required TResult Function(String error) userRegisterOtpFail,
    required TResult Function(bool otp) shouldShowOtp,
  }) {
    return userRegisterFail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserSignUpRes response)? userRegisterSuccess,
    TResult? Function(String error)? userRegisterFail,
    TResult? Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult? Function(String error)? userRegisterOtpFail,
    TResult? Function(bool otp)? shouldShowOtp,
  }) {
    return userRegisterFail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserSignUpRes response)? userRegisterSuccess,
    TResult Function(String error)? userRegisterFail,
    TResult Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult Function(String error)? userRegisterOtpFail,
    TResult Function(bool otp)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (userRegisterFail != null) {
      return userRegisterFail(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserRegisterSuccess value) userRegisterSuccess,
    required TResult Function(_UserRegisterFail value) userRegisterFail,
    required TResult Function(_UserRegisterOtpSuccess value)
        userRegisterOtpSuccess,
    required TResult Function(_UserRegisterOtpFail value) userRegisterOtpFail,
    required TResult Function(_ShouldShowOtp value) shouldShowOtp,
  }) {
    return userRegisterFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult? Function(_UserRegisterFail value)? userRegisterFail,
    TResult? Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult? Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult? Function(_ShouldShowOtp value)? shouldShowOtp,
  }) {
    return userRegisterFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult Function(_UserRegisterFail value)? userRegisterFail,
    TResult Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult Function(_ShouldShowOtp value)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (userRegisterFail != null) {
      return userRegisterFail(this);
    }
    return orElse();
  }
}

abstract class _UserRegisterFail implements UserState {
  const factory _UserRegisterFail({required final String error}) =
      _$UserRegisterFailImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$UserRegisterFailImplCopyWith<_$UserRegisterFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegisterOtpSuccessImplCopyWith<$Res> {
  factory _$$UserRegisterOtpSuccessImplCopyWith(
          _$UserRegisterOtpSuccessImpl value,
          $Res Function(_$UserRegisterOtpSuccessImpl) then) =
      __$$UserRegisterOtpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpUserRes response});
}

/// @nodoc
class __$$UserRegisterOtpSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserRegisterOtpSuccessImpl>
    implements _$$UserRegisterOtpSuccessImplCopyWith<$Res> {
  __$$UserRegisterOtpSuccessImplCopyWithImpl(
      _$UserRegisterOtpSuccessImpl _value,
      $Res Function(_$UserRegisterOtpSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$UserRegisterOtpSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OtpUserRes,
    ));
  }
}

/// @nodoc

class _$UserRegisterOtpSuccessImpl implements _UserRegisterOtpSuccess {
  const _$UserRegisterOtpSuccessImpl({required this.response});

  @override
  final OtpUserRes response;

  @override
  String toString() {
    return 'UserState.userRegisterOtpSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterOtpSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterOtpSuccessImplCopyWith<_$UserRegisterOtpSuccessImpl>
      get copyWith => __$$UserRegisterOtpSuccessImplCopyWithImpl<
          _$UserRegisterOtpSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserSignUpRes response) userRegisterSuccess,
    required TResult Function(String error) userRegisterFail,
    required TResult Function(OtpUserRes response) userRegisterOtpSuccess,
    required TResult Function(String error) userRegisterOtpFail,
    required TResult Function(bool otp) shouldShowOtp,
  }) {
    return userRegisterOtpSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserSignUpRes response)? userRegisterSuccess,
    TResult? Function(String error)? userRegisterFail,
    TResult? Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult? Function(String error)? userRegisterOtpFail,
    TResult? Function(bool otp)? shouldShowOtp,
  }) {
    return userRegisterOtpSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserSignUpRes response)? userRegisterSuccess,
    TResult Function(String error)? userRegisterFail,
    TResult Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult Function(String error)? userRegisterOtpFail,
    TResult Function(bool otp)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (userRegisterOtpSuccess != null) {
      return userRegisterOtpSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserRegisterSuccess value) userRegisterSuccess,
    required TResult Function(_UserRegisterFail value) userRegisterFail,
    required TResult Function(_UserRegisterOtpSuccess value)
        userRegisterOtpSuccess,
    required TResult Function(_UserRegisterOtpFail value) userRegisterOtpFail,
    required TResult Function(_ShouldShowOtp value) shouldShowOtp,
  }) {
    return userRegisterOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult? Function(_UserRegisterFail value)? userRegisterFail,
    TResult? Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult? Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult? Function(_ShouldShowOtp value)? shouldShowOtp,
  }) {
    return userRegisterOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult Function(_UserRegisterFail value)? userRegisterFail,
    TResult Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult Function(_ShouldShowOtp value)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (userRegisterOtpSuccess != null) {
      return userRegisterOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class _UserRegisterOtpSuccess implements UserState {
  const factory _UserRegisterOtpSuccess({required final OtpUserRes response}) =
      _$UserRegisterOtpSuccessImpl;

  OtpUserRes get response;
  @JsonKey(ignore: true)
  _$$UserRegisterOtpSuccessImplCopyWith<_$UserRegisterOtpSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegisterOtpFailImplCopyWith<$Res> {
  factory _$$UserRegisterOtpFailImplCopyWith(_$UserRegisterOtpFailImpl value,
          $Res Function(_$UserRegisterOtpFailImpl) then) =
      __$$UserRegisterOtpFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UserRegisterOtpFailImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserRegisterOtpFailImpl>
    implements _$$UserRegisterOtpFailImplCopyWith<$Res> {
  __$$UserRegisterOtpFailImplCopyWithImpl(_$UserRegisterOtpFailImpl _value,
      $Res Function(_$UserRegisterOtpFailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UserRegisterOtpFailImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserRegisterOtpFailImpl implements _UserRegisterOtpFail {
  const _$UserRegisterOtpFailImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserState.userRegisterOtpFail(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterOtpFailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterOtpFailImplCopyWith<_$UserRegisterOtpFailImpl> get copyWith =>
      __$$UserRegisterOtpFailImplCopyWithImpl<_$UserRegisterOtpFailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserSignUpRes response) userRegisterSuccess,
    required TResult Function(String error) userRegisterFail,
    required TResult Function(OtpUserRes response) userRegisterOtpSuccess,
    required TResult Function(String error) userRegisterOtpFail,
    required TResult Function(bool otp) shouldShowOtp,
  }) {
    return userRegisterOtpFail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserSignUpRes response)? userRegisterSuccess,
    TResult? Function(String error)? userRegisterFail,
    TResult? Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult? Function(String error)? userRegisterOtpFail,
    TResult? Function(bool otp)? shouldShowOtp,
  }) {
    return userRegisterOtpFail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserSignUpRes response)? userRegisterSuccess,
    TResult Function(String error)? userRegisterFail,
    TResult Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult Function(String error)? userRegisterOtpFail,
    TResult Function(bool otp)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (userRegisterOtpFail != null) {
      return userRegisterOtpFail(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserRegisterSuccess value) userRegisterSuccess,
    required TResult Function(_UserRegisterFail value) userRegisterFail,
    required TResult Function(_UserRegisterOtpSuccess value)
        userRegisterOtpSuccess,
    required TResult Function(_UserRegisterOtpFail value) userRegisterOtpFail,
    required TResult Function(_ShouldShowOtp value) shouldShowOtp,
  }) {
    return userRegisterOtpFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult? Function(_UserRegisterFail value)? userRegisterFail,
    TResult? Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult? Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult? Function(_ShouldShowOtp value)? shouldShowOtp,
  }) {
    return userRegisterOtpFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult Function(_UserRegisterFail value)? userRegisterFail,
    TResult Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult Function(_ShouldShowOtp value)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (userRegisterOtpFail != null) {
      return userRegisterOtpFail(this);
    }
    return orElse();
  }
}

abstract class _UserRegisterOtpFail implements UserState {
  const factory _UserRegisterOtpFail({required final String error}) =
      _$UserRegisterOtpFailImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$UserRegisterOtpFailImplCopyWith<_$UserRegisterOtpFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShouldShowOtpImplCopyWith<$Res> {
  factory _$$ShouldShowOtpImplCopyWith(
          _$ShouldShowOtpImpl value, $Res Function(_$ShouldShowOtpImpl) then) =
      __$$ShouldShowOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool otp});
}

/// @nodoc
class __$$ShouldShowOtpImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$ShouldShowOtpImpl>
    implements _$$ShouldShowOtpImplCopyWith<$Res> {
  __$$ShouldShowOtpImplCopyWithImpl(
      _$ShouldShowOtpImpl _value, $Res Function(_$ShouldShowOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$ShouldShowOtpImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShouldShowOtpImpl implements _ShouldShowOtp {
  const _$ShouldShowOtpImpl({required this.otp});

  @override
  final bool otp;

  @override
  String toString() {
    return 'UserState.shouldShowOtp(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShouldShowOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShouldShowOtpImplCopyWith<_$ShouldShowOtpImpl> get copyWith =>
      __$$ShouldShowOtpImplCopyWithImpl<_$ShouldShowOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserSignUpRes response) userRegisterSuccess,
    required TResult Function(String error) userRegisterFail,
    required TResult Function(OtpUserRes response) userRegisterOtpSuccess,
    required TResult Function(String error) userRegisterOtpFail,
    required TResult Function(bool otp) shouldShowOtp,
  }) {
    return shouldShowOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserSignUpRes response)? userRegisterSuccess,
    TResult? Function(String error)? userRegisterFail,
    TResult? Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult? Function(String error)? userRegisterOtpFail,
    TResult? Function(bool otp)? shouldShowOtp,
  }) {
    return shouldShowOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserSignUpRes response)? userRegisterSuccess,
    TResult Function(String error)? userRegisterFail,
    TResult Function(OtpUserRes response)? userRegisterOtpSuccess,
    TResult Function(String error)? userRegisterOtpFail,
    TResult Function(bool otp)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (shouldShowOtp != null) {
      return shouldShowOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserRegisterSuccess value) userRegisterSuccess,
    required TResult Function(_UserRegisterFail value) userRegisterFail,
    required TResult Function(_UserRegisterOtpSuccess value)
        userRegisterOtpSuccess,
    required TResult Function(_UserRegisterOtpFail value) userRegisterOtpFail,
    required TResult Function(_ShouldShowOtp value) shouldShowOtp,
  }) {
    return shouldShowOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult? Function(_UserRegisterFail value)? userRegisterFail,
    TResult? Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult? Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult? Function(_ShouldShowOtp value)? shouldShowOtp,
  }) {
    return shouldShowOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserRegisterSuccess value)? userRegisterSuccess,
    TResult Function(_UserRegisterFail value)? userRegisterFail,
    TResult Function(_UserRegisterOtpSuccess value)? userRegisterOtpSuccess,
    TResult Function(_UserRegisterOtpFail value)? userRegisterOtpFail,
    TResult Function(_ShouldShowOtp value)? shouldShowOtp,
    required TResult orElse(),
  }) {
    if (shouldShowOtp != null) {
      return shouldShowOtp(this);
    }
    return orElse();
  }
}

abstract class _ShouldShowOtp implements UserState {
  const factory _ShouldShowOtp({required final bool otp}) = _$ShouldShowOtpImpl;

  bool get otp;
  @JsonKey(ignore: true)
  _$$ShouldShowOtpImplCopyWith<_$ShouldShowOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
