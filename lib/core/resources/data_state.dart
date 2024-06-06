import 'package:dio/dio.dart';

class ApiResponse<T> {
  final T? data;
  final String? error;

  ApiResponse({this.data, this.error});
}

class NetworkWrapper {
  final Dio dio;

  NetworkWrapper(this.dio);

  Future<ApiResponse<T>> get<T>(String path, T Function(dynamic) fromJson) async {
    try {
      final response = await dio.get(path);
      if (response.statusCode == 200) {
        final parsedData = fromJson(response.data);
        return ApiResponse(data: parsedData);

        //return ApiResponse(data: fromJson(response.data));
      } else {
        return ApiResponse(error: 'Failed to load data');
      }
    } catch (e) {
      return ApiResponse(error: e.toString());
    }
  }
}