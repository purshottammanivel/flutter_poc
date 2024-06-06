import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uno_point_flutter_poc/config/theme/app_theme_provider.dart';

//final GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //sl.registerSingleton<ThemeData>(lightThemeData, instanceName: 'lightTheme');
  //sl.registerSingleton<ThemeData>(darkThemeData, instanceName: 'darkTheme');

  // Dio
  //sl.registerSingleton<Dio>(Dio());

  // Dependencies
  //sl.registerSingleton<VerifyCustomerIdService>(VerifyCustomerIdService(sl()));

  //sl.registerSingleton<VerifyCustomerIdRepository>(RegisterCustomerRepositoryImpl(sl()));

  // UseCase
  //sl.registerSingleton<VerifyCustomerIdUseCase>(VerifyCustomerIdUseCase(sl()));

  // Bloc
  //sl.registerFactory<VerifyCustomerIdBloc>(() => VerifyCustomerIdBloc(sl()));
}
