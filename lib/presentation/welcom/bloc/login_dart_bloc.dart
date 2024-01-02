import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turf_application/data/repository/auth_repo.dart';
import 'package:turf_application/domain/entities/request/user_login.dart';

part 'login_dart_event.dart';
part 'login_dart_state.dart';
part 'login_dart_bloc.freezed.dart';

class LoginDartBloc extends Bloc<LoginDartEvent, LoginDartState> {
  LoginDartBloc() : super(_Initial()) {
    on<LoginDartEvent>((event, emit) async {
      emit(const _Loading());
      AuthRepo authRepo = AuthRepo();
      final response =
          await authRepo.loginReques(UserLoginReq(email: event.email));
      if (response != null && response.error == null) {
        emit(const _LoginSuccess());
      } else {
        emit(_LoginFail(error: response?.error ?? "unknown error"));
      }
    });
  }
}
