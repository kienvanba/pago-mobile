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
};

extension Localized on String {
  String get localized => localizedData[this] ?? this;
}
