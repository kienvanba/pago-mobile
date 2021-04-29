import 'package:flutter/material.dart';

class PagoRoute {
  static const root = "/";
  static const auth = "/auth";
  static const main = "/main";
}

class PagoDimen {
  static const thin = 0.5;
  static const line = 1.0;
  static const thick = 2.0;
  static const small = 4.0;
  static const common = 8.0;
  static const x2 = 16.0;
  static const x3 = 24.0;
  static const x4 = 32.0;
  static const x5 = 40.0;
  static const x6 = 48.0;
  static const x7 = 56.0;
  static const x8 = 64.0;
  static const x9 = 72.0;
  static const x10 = 80.0;
  static const commonSpace = SizedBox(height: common, width: common);
}

class PagoTextStyle {
  static const h1 = TextStyle(
    fontSize: PagoDimen.x5,
    fontWeight: FontWeight.bold,
    color: PagoColor.text,
  );
  static const h6 = TextStyle(
    fontWeight: FontWeight.w600,
  );
  static var qoute = TextStyle(
    fontStyle: FontStyle.italic,
    color: PagoColor.text.withAlpha(150),
  );
}

class PagoColor {
  static const primary = Colors.black;
  static const text = Colors.black;
  static const mainOverlay = Color(0xA3FFFFFF);
}
