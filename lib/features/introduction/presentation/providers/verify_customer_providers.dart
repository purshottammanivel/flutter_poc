import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uno_point_flutter_poc/core/constants/constants.dart';
import 'package:uno_point_flutter_poc/core/resources/data_state.dart';
import 'package:uno_point_flutter_poc/core/util/logging_interceptor/logging_interceptor.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/data_sources/remote/verify_customer_service.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/repository/verify_customer_repository_impl.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/repository/verify_customer_repository.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/usecases/verify_customer_usecase.dart';

/// Dio provider
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  return dio;
});

/// Logging interceptor provider
final loggingInterceptorProvider = Provider<LoggingInterceptor>((ref) {
  return LoggingInterceptor();
});

/// Network wrapper provider
// final networkWrapperProvider = Provider<NetworkWrapper>((ref) {
//   final dio = ref.read(dioProvider);
//   final loggingInterceptor = ref.read(loggingInterceptorProvider);
//   dio.interceptors.add(loggingInterceptor);
//   return NetworkWrapper(dio);
// });

/// Service provider
final verifyCustomerServiceProvider = Provider<VerifyCustomerService>((ref) {
  final dio = ref.read(dioProvider);
  final loggingInterceptor = ref.read(loggingInterceptorProvider);
  dio.interceptors.add(loggingInterceptor);
  return VerifyCustomerService(dio);
});

/// Repository provider
final verifyCustomerRepositoryProvider =
    Provider<VerifyCustomerRepository>((ref) {
  final verifyCustomerService = ref.read(verifyCustomerServiceProvider);
  return VerifyCustomerRepositoryImpl(verifyCustomerService);
});

/// UseCase provider
final verifyCustomerUseCaseProvider = Provider<VerifyCustomerUseCase>((ref) {
  final verifyCustomerRepository = ref.read(verifyCustomerRepositoryProvider);
  return VerifyCustomerUseCase(verifyCustomerRepository);
});
