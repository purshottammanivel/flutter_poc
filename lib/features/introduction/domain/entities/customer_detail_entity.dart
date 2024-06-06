// import 'package:uno_point_flutter_poc/features/introduction/data/models/customer_detail_model.dart';
//
// class CustomerDetailEntity {
//   final String? id;
//   final String? name;
//   final String? url;
//   final String? appVersion;
//   final String? projectUrl;
//   final String? projectAppVersion;
//   final String? projectFlag;
//   final String? serviceFlag;
//   final String? compatibilityFlag;
//   final String? serverIpName;
//   final String? imageUrl;
//   final String? salesUrl;
//   final String? salesAppVersion;
//
//   CustomerDetailEntity({
//     required this.id,
//     required this.name,
//     required this.url,
//     required this.appVersion,
//     required this.projectUrl,
//     required this.projectAppVersion,
//     required this.projectFlag,
//     required this.serviceFlag,
//     required this.compatibilityFlag,
//     required this.serverIpName,
//     required this.imageUrl,
//     required this.salesUrl,
//     required this.salesAppVersion,
//   });
//
//   factory CustomerDetailEntity.fromModel(CustomerDetailModel model) {
//     return CustomerDetailEntity(
//       id: model.custId ?? "",
//       name: model.custName ?? "",
//       url: model.custUrl ?? "",
//       appVersion: model.appver ?? "",
//       projectUrl: model.projectCustUrl ?? "",
//       projectAppVersion: model.projectAppver ?? "",
//       projectFlag: model.projectFlag ?? "",
//       serviceFlag: model.serviceFlag ?? "",
//       compatibilityFlag: model.compatibilityFlag ?? "",
//       serverIpName: model.serverIpNameWoContext ?? "",
//       imageUrl: model.custImageUrl ?? "",
//       salesUrl: model.salesCustUrl ?? "",
//       salesAppVersion: model.salesAppver ?? "",
//     );
//   }
// }
