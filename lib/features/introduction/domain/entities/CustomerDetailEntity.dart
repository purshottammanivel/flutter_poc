import 'package:equatable/equatable.dart';

class CustomerDetailEntity extends Equatable {
  final int? id;
  final String? custId;
  final String? custName;
  final String? custUrl;
  final String? appver;
  final String? projectCustUrl;
  final String? projectAppver;
  final String? projectflag;
  final String? serviceflag;
  final String? compatibilityflag;
  final String? serveripnamewocontext;
  final String? custimageurl;
  final String? salesCustUrl;
  final String? salesAppver;

  const CustomerDetailEntity({
    this.id,
    this.custId,
    this.custName,
    this.custUrl,
    this.appver,
    this.projectCustUrl,
    this.projectAppver,
    this.projectflag,
    this.serviceflag,
    this.compatibilityflag,
    this.serveripnamewocontext,
    this.custimageurl,
    this.salesCustUrl,
    this.salesAppver,
  });

  @override
  List<Object?> get props {
    return [
      id,
      custId,
      custName,
      custUrl,
      appver,
      projectCustUrl,
      projectAppver,
      projectflag,
      serviceflag,
      compatibilityflag,
      serveripnamewocontext,
      custimageurl,
      salesCustUrl,
      salesAppver,
    ];
  }
}
