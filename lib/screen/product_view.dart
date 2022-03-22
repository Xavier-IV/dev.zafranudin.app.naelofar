import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          children: [
            SizedBox(
              height: 300,
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 6,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        SizedBox.expand(
                          child: Image.network(
                            product.images[0],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                                Colors.white.withOpacity(0.0),
                                Colors.white.withOpacity(1.0),
                              ],
                              stops: const [0.0, 1.0],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ListView(
                      children: const [
                        SizedBox(
                          height: 100.0,
                          width: double.infinity,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          height: 100.0,
                          width: double.infinity,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          height: 100.0,
                          width: double.infinity,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.green),
                          ),
                        ),
                        SizedBox(
                          height: 100.0,
                          width: double.infinity,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                children: <Widget>[
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
          ],
        ),
      ),
    );
  }
}
