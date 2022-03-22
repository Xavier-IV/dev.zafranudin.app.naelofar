import 'package:flutter/material.dart';
import 'package:fwt_naelofar_app/model/product.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 150,
              height: 300,
              child: Image.network(
                product.images[0],
              ),
            ),
            Text(product.title),
            Text(product.description ?? ''),
            const Text('Fabric guide'),
            Text('Opacity: ${product.fabricGuide?.opacity?.name}'),
            Text('Texture: ${product.fabricGuide?.texture?.name}'),
            Text('Thickness: ${product.fabricGuide?.thickness?.name}'),
            const Text('Material Care'),
          ],
        ),
      ),
    );
  }
}
