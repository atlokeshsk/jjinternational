import 'package:jjinternational/constants/constants.dart';

class Certificate {
  const Certificate({required this.imageUrl, required this.name});
  final String imageUrl;
  final String name;

  static const certificates = [
    Certificate(imageUrl: AppConstant.appeda, name: 'Registerd under APEDA'),
    Certificate(
        imageUrl: AppConstant.cocunutDevelopmentBoard,
        name: 'Registered Under CDB'),
    Certificate(imageUrl: AppConstant.fssai, name: 'Registerd under fssai'),
  ];
}
