import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pago_mobile/screen/base/base_screen.dart';
import 'package:pago_mobile/screen/main/home/home_controller.dart';
import 'package:pago_mobile/screen/main/home/widgets/menu.dart';
import 'package:pago_mobile/utils/utils.dart';

import 'widgets/calendar.dart';

class HomeScreen extends BaseScreen<HomeController> {
  HomeScreen() {
    Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/img_main_bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: PagoDimen.common,
                  horizontal: PagoDimen.x2,
                ),
                color: PagoColor.mainOverlay,
                child: HomeCalendar(),
              ),
              SizedBox(height: PagoDimen.common),
              Image.asset(
                "assets/images/img_sample_event.jpg",
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: PagoDimen.common),
                padding: const EdgeInsets.symmetric(
                  horizontal: PagoDimen.common,
                ),
                color: Colors.white.withOpacity(0.8),
                child: HomeMenu(
                  menu: controller.menuList,
                  onPressed: (menu) {
                    print("pressed ${menu.id}");
                  },
                ),
              ),
              Container(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
