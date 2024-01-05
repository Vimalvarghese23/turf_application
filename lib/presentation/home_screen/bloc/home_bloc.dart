import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:sn_progress_dialog/progress_dialog.dart';
import 'package:turf_application/Widget/game_container.dart';
import 'package:turf_application/Widget/turf_container.dart';
import 'package:turf_application/data/repository/turf_home_repo.dart';
import 'package:turf_application/domain/entities/responce/turf_home_response.dart';
import 'package:turf_application/presentation/favoraite/favoraite_page.dart';
import 'package:turf_application/presentation/order/order_page.dart';
import 'package:turf_application/presentation/profile/profile_page.dart';
import 'package:turf_application/presentation/turf_details/turf_details_page.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'package:turf_application/presentation/home_screen/home_screen_page.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  StreamController<UserHomeResModel?> userHomeResController =
      StreamController<UserHomeResModel?>.broadcast();
  Stream<UserHomeResModel?> get userHomeStream => userHomeResController.stream;
  HomeBloc() : super(_Initial()) {
    on<_GetHomeEvent>((event, emit) async {
      final UserHomeRepo userHomeRepo = UserHomeRepo();
      try {
        final response = await userHomeRepo.userHomeRes("footbal");
        if (response != null && response.error == null) {
          emit(_Success(response: response));
        } else {
          emit(_Failed(error: response?.error ?? "unknown error"));
        }
      } catch (e) {
        emit(_Failed(error: e.toString()));
      }
    });
  }
  Stream<UserHomeResModel?> featchData({required String para}) async* {
    final UserHomeRepo userHomeRepo = UserHomeRepo();
    final response = await userHomeRepo.userHomeRes('footbal');
    yield response;
  }
}
