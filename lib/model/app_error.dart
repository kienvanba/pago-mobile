import 'package:pago_mobile/utils/utils.dart';

class AppError {
  final int code;

  AppError(this.code);

  String get message {
    switch (code) {
      case 300:
        return "invalid_account".localized;
      default:
        return "Lỗi [$code] - vui lòng liên hệ kỹ thuật.";
    }
  }
}
