// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserBlocState {
  bool get loggedIn => throw _privateConstructorUsedError;
  UserBlocRequestState get requestState => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBlocStateCopyWith<UserBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlocStateCopyWith<$Res> {
  factory $UserBlocStateCopyWith(
          UserBlocState value, $Res Function(UserBlocState) then) =
      _$UserBlocStateCopyWithImpl<$Res, UserBlocState>;
  @useResult
  $Res call(
      {bool loggedIn,
      UserBlocRequestState requestState,
      String? username,
      String? email});
}

/// @nodoc
class _$UserBlocStateCopyWithImpl<$Res, $Val extends UserBlocState>
    implements $UserBlocStateCopyWith<$Res> {
  _$UserBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? requestState = null,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as UserBlocRequestState,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBlocStateImplCopyWith<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  factory _$$UserBlocStateImplCopyWith(
          _$UserBlocStateImpl value, $Res Function(_$UserBlocStateImpl) then) =
      __$$UserBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loggedIn,
      UserBlocRequestState requestState,
      String? username,
      String? email});
}

/// @nodoc
class __$$UserBlocStateImplCopyWithImpl<$Res>
    extends _$UserBlocStateCopyWithImpl<$Res, _$UserBlocStateImpl>
    implements _$$UserBlocStateImplCopyWith<$Res> {
  __$$UserBlocStateImplCopyWithImpl(
      _$UserBlocStateImpl _value, $Res Function(_$UserBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? requestState = null,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserBlocStateImpl(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as UserBlocRequestState,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserBlocStateImpl implements _UserBlocState {
  const _$UserBlocStateImpl(
      {required this.loggedIn,
      this.requestState = UserBlocRequestState.none,
      this.username,
      this.email});

  @override
  final bool loggedIn;
  @override
  @JsonKey()
  final UserBlocRequestState requestState;
  @override
  final String? username;
  @override
  final String? email;

  @override
  String toString() {
    return 'UserBlocState(loggedIn: $loggedIn, requestState: $requestState, username: $username, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBlocStateImpl &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn) &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loggedIn, requestState, username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBlocStateImplCopyWith<_$UserBlocStateImpl> get copyWith =>
      __$$UserBlocStateImplCopyWithImpl<_$UserBlocStateImpl>(this, _$identity);
}

abstract class _UserBlocState implements UserBlocState {
  const factory _UserBlocState(
      {required final bool loggedIn,
      final UserBlocRequestState requestState,
      final String? username,
      final String? email}) = _$UserBlocStateImpl;

  @override
  bool get loggedIn;
  @override
  UserBlocRequestState get requestState;
  @override
  String? get username;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$UserBlocStateImplCopyWith<_$UserBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
