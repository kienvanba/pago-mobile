extension DateTimeExtension on DateTime {
  String get dayStr => day.toString().padLeft(2, '0');
  String get monthStr => month.toString().padLeft(2, '0');
}
