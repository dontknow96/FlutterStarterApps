import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc_state.freezed.dart';

enum UserBlocRequestState { none, waiting, success, wrongCredentials, unknownError }

@freezed
class UserBlocState with _$UserBlocState {
  const factory UserBlocState({
    required bool loggedIn,
    @Default(UserBlocRequestState.none) UserBlocRequestState requestState,
    String? username,
    String? email,
  }) = _UserBlocState;
}
