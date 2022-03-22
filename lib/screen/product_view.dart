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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Promo image'),
            Text('${product.title}'),
            const Text('Description'),
            const Text('Fabric guide'),
            const Text('Material Care'),
          ],
        ),
      ),
    );
  }
}
