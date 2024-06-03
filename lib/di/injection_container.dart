import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uno_point_flutter_poc/config/theme/app_theme.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/data_sources/remote/verify_customer_id_service.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/repository/verify_customer_id_repository_impl.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/repository/verify_customer_id_repository.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/usecases/verify_customer_id_use_case.dart';
import 'package:uno_point_flutter_poc/features/introduction/presentation/bloc/register_customer/verify_customer_id_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<ThemeData>(lightThemeData, instanceName: 'lightTheme');
  sl.registerSingleton<ThemeData>(darkThemeData, instanceName: 'darkTheme');

  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<VerifyCustomerIdService>(VerifyCustomerIdService(sl()));

  sl.registerSingleton<VerifyCustomerIdRepository>(
      RegisterCustomerRepositoryImpl(sl()));

  // UseCase
  sl.registerSingleton<VerifyCustomerIdUseCase>(VerifyCustomerIdUseCase(sl()));

  // Bloc
  sl.registerFactory<VerifyCustomerIdBloc>(() => VerifyCustomerIdBloc(sl()));
}
