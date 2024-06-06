class CustomerDetailModel {
  final String custId;
  final String custName;
  final String custUrl;
  final String appVer;
  final String projectCustUrl;
  final String projectAppVer;
  final String projectFlag;
  final String serviceFlag;
  final String compatibilityFlag;
  final String serverIpNameWithoutContext;
  final String custImageUrl;
  final String salesCustUrl;
  final String salesAppVer;

  CustomerDetailModel({
    required this.custId,
    required this.custName,
    required this.custUrl,
    required this.appVer,
    required this.projectCustUrl,
    required this.projectAppVer,
    required this.projectFlag,
    required this.serviceFlag,
    required this.compatibilityFlag,
    required this.serverIpNameWithoutContext,
    required this.custImageUrl,
    required this.salesCustUrl,
    required this.salesAppVer,
  });

  factory CustomerDetailModel.fromJson(Map<String, dynamic> json) {
    return CustomerDetailModel(
      custId: json['CustId'] ?? "",
      custName: json['CustName'] ?? "",
      custUrl: json['CustUrl'] ?? "",
      appVer: json['Appver'] ?? "",
      projectCustUrl: json['ProjectCustUrl'] ?? "",
      projectAppVer: json['ProjectAppver'] ?? "",
      projectFlag: json['Projectflag'] ?? "",
      serviceFlag: json['Serviceflag'] ?? "",
      compatibilityFlag: json['compatibilityflag'] ?? "",
      serverIpNameWithoutContext: json['serveripnamewocontext'] ?? "",
      custImageUrl: json['Custimageurl'] ?? "",
      salesCustUrl: json['SalesCustUrl'] ?? "",
      salesAppVer: json['SalesAppver'] ?? "",
    );
  }
}
