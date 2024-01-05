import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:provider/provider.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

import 'package:turf_application/data/repository/auth_repo.dart';
import 'package:turf_application/domain/entities/request/user_login.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turf_application/Widget/textfield.dart';
import 'package:turf_application/presentation/home_screen/bloc/home_bloc.dart';

import 'package:turf_application/presentation/uesr_register/bloc/user_bloc.dart';

import 'package:turf_application/Widget/social_media.dart';

part 'login_dart_event.dart';
part 'login_dart_state.dart';

part '../welcome_page.dart';

part 'login_dart_bloc.freezed.dart';

class LoginDartBloc extends Bloc<LoginDartEvent, LoginDartState> {
  LoginDartBloc() : super(_Initial()) {
    on<_OnLoginClicked>((event, emit) async {
      emit(const _Loading());
      AuthRepo authRepo = AuthRepo();
      final response = await authRepo.loginReques(
          UserLoginReq(email: event.email, password: event.password));
      if (response != null && response.error == null) {
        emit(const _LoginSuccess());
      } else {
        emit(_LoginFail(error: response?.error ?? "unknown error"));
      }
    });
  }
}
