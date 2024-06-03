import 'package:uno_point_flutter_poc/core/resources/data_state.dart';
import 'package:uno_point_flutter_poc/core/usecases/use_case.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/entities/CustomerDetailEntity.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/repository/verify_customer_id_repository.dart';

class VerifyCustomerIdUseCase
    implements UseCase<DataState<List<CustomerDetailEntity>>, void> {
  final VerifyCustomerIdRepository _verifyCustomerIdRepository;

  const VerifyCustomerIdUseCase(this._verifyCustomerIdRepository);

  @override
  Future<DataState<List<CustomerDetailEntity>>> call({void params}) {
    return _verifyCustomerIdRepository.verifyCustomerId();
  }
}
