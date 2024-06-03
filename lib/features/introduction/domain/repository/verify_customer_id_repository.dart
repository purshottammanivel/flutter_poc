import 'package:uno_point_flutter_poc/core/resources/data_state.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/entities/CustomerDetailEntity.dart';

abstract class VerifyCustomerIdRepository {
  Future<DataState<List<CustomerDetailEntity>>> verifyCustomerId();
}
