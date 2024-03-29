const localizedData = {
  "app_name": "Pago",
  "confirm": "Xác nhận",
  "cancel": "Huỷ",
  "home": "Trang chủ",
  "search": "Tìm kiếm",
  "notification": "Thông báo",
  "account": "Tài khoản",

  // calendar
  "today": "Hôm nay",
  "zodiac_hour": "Giờ hoàng đạo",

  // home
  "praying_for": "Bạn đang mong cầu điều gì?",

  // error
  "invalid_account": "Tên đăng nhập hoặc mật khẩu không chính xác.",
};

extension Localized on String {
  String get localized => localizedData[this] ?? this;
}
