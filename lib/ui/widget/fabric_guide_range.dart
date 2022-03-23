import 'package:flutter/material.dart';
import 'package:fwt_naelofar_app/core/model/fabric_guide.dart';

class FabricGuideRange extends StatelessWidget {
  const FabricGuideRange({Key? key, this.fabricGuide}) : super(key: key);

  final FabricGuide? fabricGuide;

  setColor(from, against) {
    return from == against ? Colors.black : Colors.grey.withOpacity(0.4);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.0,
          width: 140.0,
          child: Column(
            children: [
              const Text(
                'Thickness',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: FabricThickness.values.map((v) {
                  return Text(
                    v.name.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: setColor(fabricGuide?.thickness, v),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50.0,
          width: 150.0,
          child: Column(
            children: [
              const Text(
                'Opacity',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: FabricOpacity.values.map((v) {
                  return Text(
                    v.name.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: setColor(fabricGuide?.opacity, v),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50.0,
          width: 250.0,
          child: Column(
            children: [
              const Text(
                'Texture',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: FabricTexture.values.map((v) {
                  return Text(
                    v.name.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: setColor(fabricGuide?.texture, v),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
