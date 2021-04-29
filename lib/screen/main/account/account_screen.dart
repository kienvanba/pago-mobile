import 'package:flutter/material.dart';
import 'package:pago_mobile/screen/base/base_screen.dart';

import 'account_controller.dart';

class AccountScreen extends BaseScreen<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Account"),
    );
  }
}
