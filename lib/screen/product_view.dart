import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fwt_naelofar_app/model/product.dart';
import 'package:fwt_naelofar_app/widget/product_gallery.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<ProductView> createState() => _ProductView();
}

class _ProductView extends State<ProductView> {
  int _imageIndex = 0;

  setImage(index) {
    setState(() {
      _imageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
          ),
        ),
        backgroundColor: const Color(0x44000000),
        elevation: 1,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: ProductGallery(
                images: widget.product.images,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'RM ${widget.product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: <Widget>[
                    Text(widget.product.description ?? ''),
                    const Text('Fabric guide'),
                    Text(
                        'Opacity: ${widget.product.fabricGuide?.opacity?.name}'),
                    Text(
                        'Texture: ${widget.product.fabricGuide?.texture?.name}'),
                    Text(
                        'Thickness: ${widget.product.fabricGuide?.thickness?.name}'),
                    const Text('Material Care'),
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
