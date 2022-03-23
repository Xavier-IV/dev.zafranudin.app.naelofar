enum FabricOpacity {
  light,
  medium,
  heavy,
}

enum FabricTexture { smooth, slight, textured }

enum FabricThickness { thin, medium, thick }

class FabricGuide {
  FabricOpacity? opacity;
  FabricTexture? texture;
  FabricThickness? thickness;

  FabricGuide({
    this.opacity,
    this.texture,
    this.thickness,
  });
}
