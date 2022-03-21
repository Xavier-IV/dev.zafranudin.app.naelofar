import 'package:flutter/material.dart';
import 'package:fwt_naelofar_app/data/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: Card(
        child: Row(
          children: [
            const Flexible(
              flex: 2,
              child: Text(
                'Image here',
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('RM ${product.price.toStringAsFixed(2)}')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
