import 'package:flutter/material.dart';
import 'package:fwt_naelofar_app/core/model/product.dart';
import 'package:fwt_naelofar_app/ui/widget/fabric_guide_range.dart';
import 'package:fwt_naelofar_app/ui/widget/product_gallery.dart';

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

  setColor(from, against) {
    return from == against ? Colors.black : Colors.grey.withOpacity(0.4);
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to cart'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        ), // This trailing comma makes auto-formatting nicer for build methods.
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: ProductGallery(
                  images: widget.product.images,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 5.0,
                ),
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
              Container(
                child: TabBar(
                  onTap: (val) {
                    print(val);
                  },
                  tabs: const [
                    Tab(
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Material",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Care",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Text(
                          widget.product.description ?? 'N/A',
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: FabricGuideRange(
                          fabricGuide: widget.product.fabricGuide,
                        ),
                      ),
                      Text(
                        widget.product.materialCare ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
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
