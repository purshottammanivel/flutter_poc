import 'package:equatable/equatable.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/entities/CustomerDetailEntity.dart';

abstract class VerifyCustomerIdState extends Equatable {
  const VerifyCustomerIdState();

  @override
  List<Object> get props => [];
}

class VerifyCustomerIdLoading extends VerifyCustomerIdState {
  const VerifyCustomerIdLoading();
}

class VerifyCustomerIdDone extends VerifyCustomerIdState {
  final List<CustomerDetailEntity> customerDetail;

  const VerifyCustomerIdDone(this.customerDetail);

  @override
  List<Object> get props => [customerDetail];
}

class VerifyCustomerIdError extends VerifyCustomerIdState {
  final String message;

  const VerifyCustomerIdError(this.message);

  @override
  List<Object> get props => [message];
}

/*
abstract class VerifyCustomerIdState extends Equatable {
  final List<CustomerDetailEntity>? customerDetail;
  final DioException? exception;

  const VerifyCustomerIdState({this.customerDetail, this.exception});

  @override
  List<Object> get props => [customerDetail!, exception!];
}

class VerifyCustomerIdLoading extends VerifyCustomerIdState {
  const VerifyCustomerIdLoading();
}

class VerifyCustomerIdDone extends VerifyCustomerIdState {
  const VerifyCustomerIdDone(List<CustomerDetailEntity> customerDetail)
      : super(customerDetail: customerDetail);
}

class VerifyCustomerError extends VerifyCustomerIdState {
  const VerifyCustomerError(DioException exception)
      : super(exception: exception);
}
 */
