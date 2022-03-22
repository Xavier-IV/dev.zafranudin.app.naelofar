import 'package:fwt_naelofar_app/core/model/fabric_guide.dart';

class Product {
  String title;
  String? description;
  List<String> images;
  FabricGuide? fabricGuide = FabricGuide();
  double price;

  Product({
    required this.title,
    required this.price,
    this.images = const [],
    this.description,
    this.fabricGuide,
  });
}
