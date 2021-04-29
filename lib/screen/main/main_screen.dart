import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pago_mobile/screen/base/base_screen.dart';
import 'package:pago_mobile/utils/utils.dart';

import 'account/account_screen.dart';
import 'home/home_screen.dart';
import 'main_controller.dart';
import 'notification/notification_screen.dart';
import 'search/search_screen.dart';

class MainScreen extends BaseScreen<MainController> {
  final List<BaseScreen> _screens = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    AccountScreen(),
  ];
  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) => _screens[index],
        itemCount: _screens.length,
        controller: _pageController,
        onPageChanged: (index) {
          controller.selectedTabIndex.value = index;
        },
      ),
      bottomNavigationBar: Obx(
        () => _buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index) {
        controller.selectedTabIndex.value = index;
        _pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
        );
      },
      currentIndex: controller.selectedTabIndex.value,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.cyan,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "home".localized,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: "search".localized,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: "notification".localized,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: "account".localized,
        ),
      ],
    );
  }
}
