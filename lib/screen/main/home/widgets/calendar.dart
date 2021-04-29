import 'package:flutter/material.dart';
import 'package:pago_mobile/model/calendar.dart';
import 'package:pago_mobile/utils/utils.dart';

class HomeCalendar extends StatelessWidget {
  final data = CalendarData(
    DateTime.now(),
    LunarDate(
      25,
      3,
      2021,
      "Giap Thin",
      "Binh Tuat",
      "Tan Suu",
      "Dan (3h-5h), Thin (7h-9h), Ty (9h-11h), Than (15h-17h), Dau (17h-19h), Hoi (21h-23h)",
    ),
    "Co cong mai sat, co ngay nen kim. (ca dao Viet Nam)",
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("today".localized),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: PagoDimen.common,
                      ),
                      child: Text(
                        data.date.dayStr,
                        style: PagoTextStyle.h1,
                      ),
                    ),
                    Text(
                      "Tháng ${data.date.monthStr}, ${data.date.year}",
                      style: PagoTextStyle.h6,
                    ),
                  ],
                ),
              ),
              Container(
                width: PagoDimen.thin,
                height: PagoDimen.x6,
                color: Colors.black,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text("Tháng ${data.lunarDate.month}"),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: PagoDimen.common,
                      ),
                      child: Text(
                        data.lunarDate.day.toString().padLeft(2, '0'),
                        style: PagoTextStyle.h1,
                      ),
                    ),
                    Text(
                      "Năm ${data.lunarDate.yearName}",
                      style: PagoTextStyle.h6,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: PagoDimen.x2),
          Text(
            "Thứ Tư",
            style: PagoTextStyle.h6,
          ),
          SizedBox(height: PagoDimen.small),
          Text(
            "Ngày ${data.lunarDate.dayName}, Tháng ${data.lunarDate.monthName}",
            style: PagoTextStyle.h6,
          ),
          SizedBox(height: PagoDimen.x2),
          Text(
            data.qoute,
            style: PagoTextStyle.qoute,
          ),
          SizedBox(height: PagoDimen.x2),
          Text(
            "zodiac_hour".localized,
            style: PagoTextStyle.h6,
          ),
          SizedBox(height: PagoDimen.small),
          Text(
            data.lunarDate.zodiacHours,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
