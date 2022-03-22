import 'package:flutter/material.dart';
import 'package:fwt_naelofar_app/model/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: SizedBox(
                    width: 90.0,
                    height: 150.0,
                    child: Image.network(product.images[0])),
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
      ),
    );
  }
}
