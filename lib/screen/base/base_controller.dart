import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pago_mobile/data/app_repository.dart';

class BaseController extends GetxController {
  AppRepository appRepository = Get.find();
}
