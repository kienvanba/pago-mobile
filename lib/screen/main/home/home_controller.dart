import 'package:get/get.dart';
import 'package:pago_mobile/model/menu.dart';
import 'package:pago_mobile/model/news.dart';
import 'package:pago_mobile/screen/base/base_controller.dart';
import 'package:pago_mobile/utils/utils.dart';

class HomeController extends BaseController {
  final List<Menu> menuList = [
    Menu('career', "Sự nghiệp", null),
    Menu('love', "Tình duyên", null),
    Menu('family', "Gia đình", null),
    Menu('children', "Con cái", null),
    Menu('health', "Sức khoẻ", null),
    Menu('other', "Khác", null),
  ].obs;
  final newsList = List<News>.empty().obs;

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    appRepository.fetchNews().then((value) {
      newsList.value = value;
    }).catchError((error) {
      log(error);
    });
  }
}
