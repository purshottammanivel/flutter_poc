import 'dart:convert';

import 'package:uno_point_flutter_poc/features/introduction/data/data_sources/remote/verify_customer_service.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/models/customer_detail_model.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/entities/customer_detail_entity.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/repository/verify_customer_repository.dart';

/*
class VerifyCustomerRepositoryImpl implements VerifyCustomerRepository {
  final VerifyCustomerService _verifyCustomerService;

  VerifyCustomerRepositoryImpl(this._verifyCustomerService);

  @override
  Future<List<CustomerDetailEntity>> verifyCustomer() async {
    final response = await _verifyCustomerService.fetchCustomerDetails();
    if (response.error != null) {
      throw Exception(response.error);
    }
    return response.data!.map((model) => model as CustomerDetailEntity).toList();
  }
}
*/

class VerifyCustomerRepositoryImpl implements VerifyCustomerRepository {

  final VerifyCustomerService _verifyCustomerService;

  VerifyCustomerRepositoryImpl(this._verifyCustomerService);

  @override
  Future<List<CustomerDetailModel>> verifyCustomer() async {
    final response = await _verifyCustomerService.fetchCustomerDetails();
    final List<dynamic> data = json.decode(response.data)['CustomerDetails'];
    return data.map((json) => CustomerDetailModel.fromJson(json)).toList();
  }
}