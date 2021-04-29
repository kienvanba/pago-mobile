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
  static const h2 = TextStyle(
    fontSize: PagoDimen.x4,
    fontWeight: FontWeight.bold,
    color: PagoColor.text,
  );
  static const h3 = TextStyle(
    fontSize: PagoDimen.x3,
    fontWeight: FontWeight.bold,
    color: PagoColor.text,
  );
  static const h4 = TextStyle(
    fontSize: PagoDimen.x2,
    fontWeight: FontWeight.w700,
    color: PagoColor.text,
  );
  static const h5 = TextStyle(
    fontSize: PagoDimen.common,
    fontWeight: FontWeight.w600,
    color: PagoColor.text,
  );
  static const h6 = TextStyle(
    fontWeight: FontWeight.w600,
  );
  static const subtile = TextStyle(
    fontWeight: FontWeight.w400,
    color: PagoColor.text,
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
