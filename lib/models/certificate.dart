import 'package:jjinternational/constants/constants.dart';

class Certificate {
  const Certificate({required this.imageUrl, required this.name});
  final String imageUrl;
  final String name;

  static const certificates = [
    Certificate(
      imageUrl: '${AppConstant.certificatesAssets}/appeda.png',
      name: 'Registerd under APEDA',
    ),
    Certificate(
        imageUrl:
            '${AppConstant.certificatesAssets}/coconut-development-board.png',
        name: 'Registered Under CDB'),
    Certificate(
      imageUrl: '${AppConstant.certificatesAssets}/fssai.png',
      name: 'Registerd under fssai',
    ),
  ];
}
