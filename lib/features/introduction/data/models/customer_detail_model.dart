import 'package:uno_point_flutter_poc/features/introduction/domain/entities/CustomerDetailEntity.dart';

class CustomerDetailModel extends CustomerDetailEntity {
  const CustomerDetailModel({
    int? id,
    String? custId,
    String? custName,
    String? custUrl,
    String? appver,
    String? projectCustUrl,
    String? projectAppver,
    String? projectflag,
    String? serviceflag,
    String? compatibilityflag,
    String? serveripnamewocontext,
    String? custimageurl,
    String? salesCustUrl,
    String? salesAppver,
  }) : super(
          id: id,
          custId: custId,
          custName: custName,
          custUrl: custUrl,
          appver: appver,
          projectCustUrl: projectCustUrl,
          projectAppver: projectAppver,
          projectflag: projectflag,
          serviceflag: serviceflag,
          compatibilityflag: compatibilityflag,
          serveripnamewocontext: serveripnamewocontext,
          custimageurl: custimageurl,
          salesCustUrl: salesCustUrl,
          salesAppver: salesAppver,
        );

  factory CustomerDetailModel.fromJson(Map<String, dynamic> map) {
    return CustomerDetailModel(
      custId: map['CustId']                               ?? "",
      custName: map['CustName']                           ?? "",
      custUrl: map['CustUrl']                             ?? "",
      appver: map['Appver']                               ?? "",
      projectCustUrl: map['ProjectCustUrl']               ?? "",
      projectAppver: map['ProjectAppver']                 ?? "",
      projectflag: map['Projectflag']                     ?? "",
      serviceflag: map['Serviceflag']                     ?? "",
      compatibilityflag: map['compatibilityflag']         ?? "",
      serveripnamewocontext: map['serveripnamewocontext'] ?? "",
      custimageurl: map['Custimageurl']                   ?? "",
      salesCustUrl: map['SalesCustUrl']                   ?? "",
      salesAppver: map['SalesAppver']                     ?? "",
    );
  }
}
