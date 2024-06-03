import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uno_point_flutter_poc/core/resources/data_state.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/usecases/verify_customer_id_use_case.dart';
import 'package:uno_point_flutter_poc/features/introduction/presentation/bloc/register_customer/verify_customer_id_event.dart';
import 'package:uno_point_flutter_poc/features/introduction/presentation/bloc/register_customer/verify_customer_id_state.dart';

class VerifyCustomerIdBloc
    extends Bloc<VerifyCustomerIdEvent, VerifyCustomerIdState> {
  final VerifyCustomerIdUseCase _verifyCustomerIdUseCase;

  VerifyCustomerIdBloc(this._verifyCustomerIdUseCase)
      : super(const VerifyCustomerIdLoading()) {
    on<GetCustomerDetails>(onGetCustomerDetails);
  }

  void onGetCustomerDetails(
      GetCustomerDetails event, Emitter<VerifyCustomerIdState> emit) async {
    final dataState = await _verifyCustomerIdUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(VerifyCustomerIdDone(dataState.data!));
    } else if (dataState is DataFailed) {
      emit(VerifyCustomerIdError(dataState.exception!.message.toString()));
    }
  }
}
