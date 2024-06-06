import 'package:uno_point_flutter_poc/features/introduction/data/models/customer_detail_model.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/repository/verify_customer_repository.dart';

class VerifyCustomerUseCase {
  final VerifyCustomerRepository _verifyCustomerRepository;

  VerifyCustomerUseCase(this._verifyCustomerRepository);

  Future<CustomerDetailModel> execute(String customerId) async {
    final List<CustomerDetailModel> customerDetails =
        await _verifyCustomerRepository.verifyCustomer();

    final customer = customerDetails.firstWhere(
      (customer) => customer.custId == customerId,
      orElse: () => throw CustomerNotFoundException(),
    );

    return customer;
  }
}

class CustomerNotFoundException implements Exception {
  final String message;

  CustomerNotFoundException({this.message = 'Customer not found!'});

  @override
  String toString() {
    return message;
  }
}
