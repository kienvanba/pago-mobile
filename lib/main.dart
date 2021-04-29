import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:pago_mobile/data/app_repository.dart';
import 'package:pago_mobile/utils/utils.dart';

import 'screen/main/main_controller.dart';
import 'screen/main/main_screen.dart';
import 'screen/splash/splash_controller.dart';
import 'screen/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => AppRepository().init());
  return runApp(PagoApp());
}

class PagoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "app_name".localized,
      theme: ThemeData(
        primaryColor: PagoColor.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: PagoColor.text),
      ),
      initialRoute: PagoRoute.main,
      getPages: [
        GetPage(
          name: PagoRoute.root,
          page: () => SplashScreen(),
          binding: BindingsBuilder(() => {Get.put(SplashController())}),
        ),
        GetPage(
          name: PagoRoute.main,
          page: () => MainScreen(),
          binding: BindingsBuilder(() => {Get.put(MainController())}),
        ),
      ],
    );
  }
}
