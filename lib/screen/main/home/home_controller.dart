import 'package:get/get.dart';
import 'package:pago_mobile/model/menu.dart';
import 'package:pago_mobile/screen/base/base_controller.dart';

class HomeController extends BaseController {
  final List<Menu> menuList = [
    Menu('career', "Sự nghiệp", null),
    Menu('love', "Tình duyên", null),
    Menu('family', "Gia đình", null),
    Menu('children', "Con cái", null),
    Menu('health', "Sức khoẻ", null),
    Menu('other', "Khác", null),
  ].obs;
}
