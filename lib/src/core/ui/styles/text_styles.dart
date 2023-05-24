import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  
  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get fontFamyli => 'mplus1';

  TextStyle get textLight =>
      TextStyle(fontWeight: FontWeight.w300, fontFamily: fontFamyli);
  TextStyle get textRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: fontFamyli);
  TextStyle get textMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: fontFamyli);
  TextStyle get textSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: fontFamyli);
  TextStyle get textBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: fontFamyli);
  TextStyle get textExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: fontFamyli);
  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);
  TextStyle get textTitle => textExtraBold.copyWith(fontSize: 22);
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
