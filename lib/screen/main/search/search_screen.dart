import 'package:flutter/material.dart';
import 'package:pago_mobile/screen/base/base_screen.dart';
import 'package:pago_mobile/screen/main/search/search_controller.dart';

class SearchScreen extends BaseScreen<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("search"),
    );
  }
}
