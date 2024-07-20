import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:single_app/features/user/bloc/user_bloc_event.dart';
import 'package:single_app/features/user/bloc/user_bloc_state.dart';
import 'package:single_app/features/user/repository/user_repository.dart';

class UserBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBloc(super.initialState, this.userRepository) {
    on<Logout>(_logout);
    on<Login>(_login);
    on<Refresh>(_refresh);

    add(const UserBlocEvent.refresh());
  }

  final UserRepository userRepository;

  Future<void> _login(Login event, Emitter<UserBlocState> emit) async {
    emit(state.copyWith(requestState: UserBlocRequestState.waiting));

    final loginResponse =
        await userRepository.login(event.username, event.password);

    switch (loginResponse.$1) {
      case LoginResponse.success:
        emit(
          state.copyWith(
            requestState: UserBlocRequestState.none,
            email: loginResponse.$2!.email,
            username: loginResponse.$2!.username,
            loggedIn: true,
          ),
        );
      case LoginResponse.wrongCredentials:
        emit(
          state.copyWith(
            requestState: UserBlocRequestState.wrongCredentials,
          ),
        );
      case LoginResponse.unknownError:
        emit(state.copyWith(requestState: UserBlocRequestState.unknownError));
    }
  }

  Future<void> _logout(Logout event, Emitter<UserBlocState> emit) async {
    await userRepository.logout();
    emit(
      state.copyWith(
        requestState: UserBlocRequestState.none,
        email: null,
        username: null,
        loggedIn: false,
      ),
    );
  }

  Future<void> _refresh(Refresh event, Emitter<UserBlocState> emit) async {
    final isLoggedIn = await userRepository.isLoggedIn();
    final username = await userRepository.getUsernameOfLoggedIn();

    emit(state.copyWith(username: username, loggedIn: isLoggedIn));
  }
}
