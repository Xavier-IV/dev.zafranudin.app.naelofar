import 'package:flutter/material.dart';
import 'package:fwt_naelofar_app/data/product.dart';
import 'package:fwt_naelofar_app/widget/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

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
          child: ListView(
            children: [
              ProductCard(
                product: Product(title: 'Product 1 Name (Brown)', price: 15.00),
              ),
              ProductCard(
                product: Product(title: 'Product 2 Name (Black)', price: 9.00),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
