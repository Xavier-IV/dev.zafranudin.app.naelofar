import 'package:flutter/material.dart';
import 'package:fwt_naelofar_app/data/product_generator.dart';
import 'package:fwt_naelofar_app/model/product.dart';
import 'package:fwt_naelofar_app/screen/product_view.dart';
import 'package:fwt_naelofar_app/widget/product_card.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  final List<Product> _products = ProductGenerator.generate();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 8,
            child: ListView.builder(
              itemCount: _products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print('Navigating');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductView(product: _products[index]),
                      ),
                    );
                  },
                  child: ProductCard(
                    product: _products[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
