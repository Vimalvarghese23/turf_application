import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:turf_application/data/datasource/dio_client.dart';
import 'package:turf_application/data/datasource/endpoints.dart';
import 'package:turf_application/domain/entities/request/urer_signup.dart';
import 'package:turf_application/domain/entities/request/user_login.dart';
import 'package:turf_application/domain/entities/responce/otp_user_resp.dart';
import 'package:turf_application/domain/entities/responce/user_login_resp.dart';
import 'package:turf_application/domain/entities/responce/user_signup_resp.dart';

class AuthRepo {
  final DioClient dioClient = DioClient(Dio());
  Future<UserSignUpRes?> signupRepo(UserSignUp userSignUp) async {
    try {
      final respoonse = await dioClient.mainReqRes(
        endPoints: EndPoints.userSIgnup,
        data: userSignUp.toJson(),
      );
      print(respoonse);
      if (respoonse.statusCode == 200) {
        final signupRespose = UserSignUpRes.fromJson(respoonse.data);
        if (signupRespose.user != null) {
          return signupRespose;
        } else {
          return UserSignUpRes(error: "Some thing is problem?");
        }
      } else {
        final signupRespose = UserSignUpRes.fromJson(respoonse.data);
        if (respoonse.statusCode == 400) {
          if (signupRespose.error != null) {
            return signupRespose;
          } else {
            return UserSignUpRes(error: "Some thing is problem?");
          }
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final signupRespose = UserSignUpRes.fromJson(e.response!.data);
        return signupRespose;
      }
    }
    return UserSignUpRes(error: "Some thing is problem?");
  }

  Future<OtpUserRes?> signupOtpRepo(UserSignUp userSignUp) async {
    try {
      final respoonse = await dioClient.mainReqRes(
        endPoints: EndPoints.userSIgnupOtp,
        data: userSignUp.toJson(),
      );
      print(respoonse);
      if (respoonse.statusCode == 200) {
        final signupRespose = OtpUserRes.fromJson(respoonse.data);
        if (signupRespose.userOtp != null) {
          return signupRespose;
        } else {
          return OtpUserRes(error: "Some thing is problem?");
        }
      } else {
        final signupRespose = OtpUserRes.fromJson(respoonse.data);
        if (respoonse.statusCode == 400) {
          if (signupRespose.error != null) {
            return signupRespose;
          } else {
            return OtpUserRes(error: "Some thing is problem?");
          }
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final signupRespose = OtpUserRes.fromJson(e.response!.data);
        return signupRespose;
      }
    }
    return OtpUserRes(error: "Some thing is problem?");
  }

  Future<UserLoginRes?> loginReques(UserLoginReq userLoginReqModel) async {
    try {
      final response = await dioClient.mainReqRes(
        endPoints: EndPoints.login,
        data: userLoginReqModel.toJson(),
      );
      if (response.statusCode == 200) {
        final loginResponse = UserLoginRes.fromJson(response.data);
        if (loginResponse.token != null) {
          Get.find<UserLoginRes>().token = loginResponse.token;
          return loginResponse;
        } else {
          return UserLoginRes(error: "Some thing is problem?");
        }
      } else {
        final loginResponse = UserLoginRes.fromJson(response.data);
        if (response.statusCode == 400) {
          return loginResponse;
        } else {
          return UserLoginRes(error: "Some thing is problem?");
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final loginErrorResponse = UserLoginRes.fromJson(e.response!.data);
        return loginErrorResponse;
      } else {
        return UserLoginRes(error: "Some thing is problem?");
      }
    }
  }
}
