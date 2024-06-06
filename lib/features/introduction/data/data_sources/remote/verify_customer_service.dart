import 'package:dio/dio.dart';
import 'package:uno_point_flutter_poc/core/constants/constants.dart';
import 'package:uno_point_flutter_poc/core/resources/data_state.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/models/customer_detail_model.dart';

/*class VerifyCustomerService {
  final NetworkWrapper _networkWrapper;

  VerifyCustomerService() : _networkWrapper = NetworkWrapper(Dio(BaseOptions(baseUrl: baseUrl))) {
    _networkWrapper.dio.interceptors.add(LoggingInterceptor());
  }

  Future<ApiResponse<List<CustomerDetailModel>>> fetchCustomerDetails() async {
    return _networkWrapper.get<List<CustomerDetailModel>>(
      verifyCustomerEndPoint,
          (data) {
        List<dynamic> jsonList = data['CustomerDetails'];
        return jsonList.map((json) => CustomerDetailModel.fromJson(json)).toList();
      },
    );
  }
}*/

/*
class VerifyCustomerService {
  final NetworkWrapper _networkWrapper;

  VerifyCustomerService(this._networkWrapper);

  Future<ApiResponse<List<CustomerDetailModel>>> fetchCustomerDetails() async {
    return await _networkWrapper.get<List<CustomerDetailModel>>(
      verifyCustomerEndPoint,
          (data) {
        List<dynamic> jsonList = data['CustomerDetails'];
        return jsonList.map((json) => CustomerDetailModel.fromJson(json)).toList();
      },
    );
  }
}*/

/*
class VerifyCustomerService {
  final Dio _dio;

  VerifyCustomerService(this._dio);

  Future<ApiResponse<List<CustomerDetailModel>>> fetchCustomerDetails() async {
    try {
        final response = await _dio.get(verifyCustomerEndPoint);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['CustomerDetails'];
        // final List<CustomerDetailModel> customerDetails = response.data['CustomerDetails']
        //     .map((json) => CustomerDetailModel.fromJson(json))
        //     .toList();
        final List<CustomerDetailModel> customerDetails = response.data['CustomerDetails']
            .map((json) => CustomerDetailModel.fromJson(json))
            .toList();
        return ApiResponse(data: customerDetails);
        return ApiResponse(data: customerDetails);
      } else {
        return ApiResponse(error: 'Failed to load data');
      }
    } catch (e) {
      return ApiResponse(error: e.toString());
    }
  }
}
*/

class VerifyCustomerService {
  final Dio _dio;

  VerifyCustomerService(this._dio);

  Future<Response> fetchCustomerDetails() async {
    try {
      final response = await _dio.get(verifyCustomerEndPoint);
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch customer details: $e');
    }
  }
}
