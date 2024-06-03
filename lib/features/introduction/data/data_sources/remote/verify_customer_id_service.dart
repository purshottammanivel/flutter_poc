import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uno_point_flutter_poc/core/constants/constants.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/models/customer_detail_model.dart';

part 'verify_customer_id_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class VerifyCustomerIdService {
  factory VerifyCustomerIdService(Dio dio) = _VerifyCustomerIdService;

  @GET('/upsdinf/jsp/MDMappingNew.html')
  Future<HttpResponse<List<CustomerDetailModel>>> getCustomerDetail();
}
