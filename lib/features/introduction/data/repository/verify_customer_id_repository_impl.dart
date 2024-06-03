import 'dart:io';

import 'package:dio/dio.dart';
import 'package:uno_point_flutter_poc/core/resources/data_state.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/data_sources/remote/verify_customer_id_service.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/models/customer_detail_model.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/repository/verify_customer_id_repository.dart';

class RegisterCustomerRepositoryImpl implements VerifyCustomerIdRepository {
  final VerifyCustomerIdService _registerCustomerService;

  RegisterCustomerRepositoryImpl(this._registerCustomerService);

  @override
  Future<DataState<List<CustomerDetailModel>>> verifyCustomerId() async {
    try {
      final httpResponse = await _registerCustomerService.getCustomerDetail();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusCode,
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
