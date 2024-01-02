import 'package:dio/dio.dart';
import 'package:get/get.dart' as G;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:turf_application/constants/constants.dart';
import 'package:turf_application/data/datasource/endpoints.dart';
import 'package:turf_application/domain/entities/responce/user_login_resp.dart';

class DioClient {
  final Dio _dio;
  DioClient(this._dio) {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ),
    );
  }
  Future<dynamic> mainReqRes({
    required EndPoints endPoints,
    String? parameter,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    Response response;
    if (headers != null) {
      _dio.options.headers.addAll(headers);
    }
    if (endPoints.hasToken()) {
      String? _token = G.Get.find<UserLoginRes>().token;
      print(_token);
      _dio.options.headers
          .addAll({"Authorization": "Bearer ${_token ?? "No Token"}"});
    }
    try {
      switch (endPoints.type()) {
        case ReqType.GET:
          response = await _dio.get(
            "$baseUrl${endPoints.path()}/${parameter}",
            queryParameters: data,
          );
        case ReqType.POST:
          response = await _dio.post(
            "$baseUrl${endPoints.path()}",
            data: data,
          );
        case ReqType.PUT:
          response = await _dio.post(
            "$baseUrl${endPoints.path()}",
            data: data,
          );
      }
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        response = e.response!;
      } else {
        switch (e.type) {
          case DioExceptionType.receiveTimeout:
            response = Response(
              requestOptions: e.requestOptions,
              statusMessage: "Received time out",
              statusCode: 700,
            );
            break;

          default:
            response = Response(
              requestOptions: e.requestOptions,
              statusMessage: "Some error happened",
              statusCode: 800,
            );
        }
      }
      return response;
    }
  }
}

enum ReqType {
  GET,
  POST,
  PUT,
}
