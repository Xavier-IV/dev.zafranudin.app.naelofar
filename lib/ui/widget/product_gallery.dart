import 'package:flutter/material.dart';

class ProductGallery extends StatefulWidget {
  const ProductGallery({Key? key, required this.images}) : super(key: key);

  final List<String> images;

  @override
  State<ProductGallery> createState() => _ProductGallery();
}

class _ProductGallery extends State<ProductGallery> {
  int _imageIndex = 0;

  setImage(index) {
    setState(() {
      _imageIndex = index;
    });
  }

  showSelected(index) {
    if (index != _imageIndex) return const SizedBox.shrink();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          begin: FractionalOffset.topRight,
          end: FractionalOffset.bottomLeft,
          colors: [
            Colors.grey.withOpacity(0.0),
            Colors.grey.withOpacity(0.5),
          ],
          stops: const [0.0, 0.5],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 6,
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              SizedBox.expand(
                child: Image.network(
                  widget.images[_imageIndex],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 50.0,
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
          child: ListView.builder(
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => setImage(index),
                  child: SizedBox(
                    height: 120.0,
                    width: double.infinity,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        Image.network(
                          widget.images[index],
                          fit: BoxFit.cover,
                        ),
                        showSelected(index),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
