import 'package:flutter/material.dart';
import 'package:pago_mobile/screen/base/base_screen.dart';
import 'package:pago_mobile/screen/main/notification/notification_controller.dart';

class NotificationScreen extends BaseScreen<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("notification"),
    );
  }
}
