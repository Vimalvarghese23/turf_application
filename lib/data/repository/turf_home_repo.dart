import 'package:dio/dio.dart';
import 'package:turf_application/data/datasource/dio_client.dart';
import 'package:turf_application/data/datasource/endpoints.dart';
import 'package:turf_application/domain/entities/responce/turf_home_response.dart';

class UserHomeRepo {
  final DioClient dioClient = DioClient(Dio());

  Future<UserHomeResModel?> userHomeRes(category) async {
    try {
      final response = await dioClient.mainReqRes(
          endPoints: EndPoints.userHome, parameter: category);
      if (response.statusCode == 200) {
        final homeResponse = UserHomeResModel.fromJson(response.data);
        if (homeResponse.turf != null) {
          return homeResponse;
        } else {
          return UserHomeResModel(error: "Some thing is problem?");
        }
      } else {
        final homeResponse = UserHomeResModel.fromJson(response.data);
        if (response.statusCode == 400) {
          return homeResponse;
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final homeResponse = UserHomeResModel.fromJson(e.response!.data);
        return homeResponse;
      }
    }
    return UserHomeResModel(error: "Some thing is problem?");
  }
}
