class CalendarData {
  final DateTime date;
  final LunarDate lunarDate;
  final String qoute;

  CalendarData(this.date, this.lunarDate, this.qoute);
}

class LunarDate {
  final int day;
  final int month;
  final int year;
  final String dayName;
  final String monthName;
  final String yearName;
  final String zodiacHours;

  LunarDate(this.day, this.month, this.year, this.dayName, this.monthName,
      this.yearName, this.zodiacHours);
}
