import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';
import 'package:turf_application/Widget/resend_otp.dart';
import 'package:turf_application/Widget/textfield.dart';
import 'package:turf_application/Widget/user_avathar.dart';
import 'package:turf_application/data/repository/auth_repo.dart';
import 'package:turf_application/domain/entities/request/urer_signup.dart';
import 'package:turf_application/domain/entities/responce/otp_user_resp.dart';
import 'package:turf_application/domain/entities/responce/user_signup_resp.dart';
import 'package:turf_application/presentation/welcom/bloc/login_dart_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'package:turf_application/presentation/uesr_register/user_register_page.dart';
part 'package:turf_application/presentation/otp/otp_page.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(_Initial()) {
    on<_OnRegisterCliked>(
      (event, emit) async {
        emit(const _Loading());
        AuthRepo authRepo = AuthRepo();
        final response = await authRepo.signupRepo(
          UserSignUp(
            name: event.name,
            password: event.password,
            mobileNumber: event.mobileNumber,
            email: event.email,
            avatar: event.avathar,
          ),
        );
        if (response != null && response.error == null) {
          emit(_UserRegisterSuccess(response: response));
        } else {
          emit(_UserRegisterFail(error: response?.error ?? "unknown error"));
        }
      },
    );
    on<_OnRegisterOtpCliked>(
      (event, emit) async {
        emit(const _Loading());
        AuthRepo authRepo = AuthRepo();
        final response = await authRepo.signupOtpRepo(
          UserSignUp(
            name: event.name,
            password: event.password,
            mobileNumber: event.mobileNumber,
            email: event.email,
            otp: event.otp,
            avatar: event.avathar,
          ),
        );

        if (response != null && response.error == null) {
          emit(_UserRegisterOtpSuccess(response: response));
        } else {
          emit(_UserRegisterOtpFail(error: response?.error ?? "unknown error"));
        }
      },
    );
  }
}
