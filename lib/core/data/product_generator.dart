import 'package:fwt_naelofar_app/core/model/fabric_guide.dart';
import 'package:fwt_naelofar_app/core/model/product.dart';

class ProductGenerator {
  static List<Product> generate() {
    return [
      Product(
        title: 'PIYA PLEATED SHAWL - LIGHT BROWN',
        price: 79.0,
        fabricGuide: FabricGuide(
          opacity: FabricOpacity.medium,
          texture: FabricTexture.textured,
          thickness: FabricThickness.thin,
        ),
        images: [
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_light_brown_1.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_light_brown_2.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_light_brown_3.jpg',
        ],
        description: 'Description of product',
      ),
      Product(
        title: 'PIYA PLEATED SHAWL - PURPLE MAUVE',
        price: 79.0,
        fabricGuide: FabricGuide(
          opacity: FabricOpacity.medium,
          texture: FabricTexture.textured,
          thickness: FabricThickness.thin,
        ),
        images: [
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_purple_mauve_1.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_purple_mauve_2.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_purple_mauve_3.jpg'
        ],
        description: 'Description of product',
      ),
      Product(
        title: 'PIYA PLEATED SHAWL - BROWN MAUVE',
        price: 79.0,
        fabricGuide: FabricGuide(
          opacity: FabricOpacity.medium,
          texture: FabricTexture.textured,
          thickness: FabricThickness.thin,
        ),
        images: [
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_brown_mauve_1.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_brown_mauve_2.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_brown_mauve_3.jpg',
        ],
        description: 'Description of product',
      ),
      Product(
        title: 'PIYA PLEATED SHAWL - DARK BLUE',
        price: 79.0,
        fabricGuide: FabricGuide(
          opacity: FabricOpacity.medium,
          texture: FabricTexture.textured,
          thickness: FabricThickness.thin,
        ),
        images: [
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_dark_blue_1.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_dark_blue_2.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/i/piya_pleated_shawl_-_dark_blue_3.jpg',
        ],
        description: 'Description of product',
      ),
      Product(
        title: 'PALOMA CRYSTAL SQUARE - LIGHT PINK',
        price: 129.0,
        fabricGuide: FabricGuide(
          opacity: FabricOpacity.medium,
          texture: FabricTexture.smooth,
          thickness: FabricThickness.medium,
        ),
        images: [
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/a/paloma_-_light_pink_1_1.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/a/paloma_-_light_pink_2_1.jpg',
          'https://my.naelofar.com/pub/media/catalog/product/cache/930d50ba24eabca612cdb8388f50b2e4/p/a/paloma_-_light_pink_3_1.jpg',
        ],
        description: 'Description of product',
      ),
    ];
  }
}
