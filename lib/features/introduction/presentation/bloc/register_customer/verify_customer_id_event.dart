import 'package:equatable/equatable.dart';

abstract class VerifyCustomerIdEvent extends Equatable {
  const VerifyCustomerIdEvent();

  @override
  List<Object> get props => [];
}

class GetCustomerDetails extends VerifyCustomerIdEvent {
  const GetCustomerDetails();
}
