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
                product: Product(
                  title: 'PIYA PLEATED SHAWL - LIGHT BROWN',
                  price: 79.0,
                  images: [
                    'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_light_brown_1.jpg'
                  ],
                ),
              ),
              ProductCard(
                product: Product(
                  title: 'PIYA PLEATED SHAWL - PURPLE MAUVE',
                  price: 79.0,
                  images: [
                    'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_purple_mauve_1.jpg'
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
