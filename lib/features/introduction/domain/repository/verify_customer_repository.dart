import 'package:uno_point_flutter_poc/features/introduction/data/models/customer_detail_model.dart';

abstract class VerifyCustomerRepository {
  Future<List<CustomerDetailModel>> verifyCustomer();
}
