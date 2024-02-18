import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:learn_flutter/shared/services/endpoint.dart';

@singleton
class DioClient {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  ));


  getDioClient<Dio>() {
    return _dio;
  }

}
