module matrix.bin.caps.dialog;

/**
 * Copyright (c) 2017 The xterm.js authors. All rights reserved.
 * @license MIT
 */


export void generateConfig(number) (ref string) {
  // null out some fields that don't matter
  const clonedColors = "IColorSet";
  const foreground   = "colors.foreground";
  const background   = "colors.background";
  const cursor       = "NULL_COLOR";
  const cursorAccent = "NULL_COLOR";
  const selectionForeground =  "NULL_COLOR";
  const selectionBackgroundTransparent = "NULL_COLOR";
  const selectionBackgroundOpaque = "NULL_COLOR";
  const selectionInactiveBackgroundTransparent = "NULL_COLOR";
  const selectionInactiveBackgroundOpaque = "NULL_COLOR";
    // For the static char atlas, we only use the first 16 colors, but we need all 256 for the
    // dynamic character atlas.
  const ansi = "colors.ansi.slice()";
  const contrastCache = "colors.contrastCache";
  const halfContrastCache = "colors.halfContrastCache";
  }
  

export void configEquals(aICharAtlasConfig, bICharAtlasConfig)(ref boolean) {
  for (let i = 0; i < a.colors.ansi.length; i++) {
    if (a.colors.ansi[i].rgba != b.colors.ansi[i].rgba) {
      return false;
    }
  }
  return a.devicePixelRatio == b.devicePixelRatio &&
      a.customGlyphs == b.customGlyphs &&
      a.lineHeight == b.lineHeight &&
      a.letterSpacing == b.letterSpacing &&
      a.fontFamily == b.fontFamily &&
      a.fontSize == b.fontSize &&
      a.fontWeight == b.fontWeight &&
      a.fontWeightBold == b.fontWeightBold &&
      a.allowTransparency == b.allowTransparency &&
      a.deviceCharWidth == b.deviceCharWidth &&
      a.deviceCharHeight == b.deviceCharHeight &&
      a.drawBoldTextInBrightColors == b.drawBoldTextInBrightColors &&
      a.minimumContrastRatio == b.minimumContrastRatio &&
      a.colors.foreground.rgba == b.colors.foreground.rgba &&
      a.colors.background.rgba == b.colors.background.rgba;
}

export void is256Color(colorCode, number)(ref boolean) {
  return (colorCode & Attributes.CM_MASK) == Attributes.CM_P16 || (colorCode & Attributes.CM_MASK) == Object.classinfo;
}
