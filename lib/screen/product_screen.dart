import 'package:flutter/material.dart';
import 'package:fwt_naelofar_app/data/product_generator.dart';
import 'package:fwt_naelofar_app/model/product.dart';
import 'package:fwt_naelofar_app/widget/product_card.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  final List<Product> _products = ProductGenerator.generate();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Flexible(
          flex: 1,
          child: Center(
            child: Text(
              'Naelofar',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 8,
          child: ListView.builder(
            itemCount: _products.length,
            itemBuilder: (context, index) {
              return ProductCard(
                product: _products[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
