import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

DateTime today = DateTime.now();

void _onDaySelected(DateTime day, DateTime focusDay) {
  // setState(() {
  //   today = day;
  // });
  today = day;

}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [content()],
      ),
    );
  }
}

Widget content() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        Text("Selected Days = "+ today.toString().split("")[0]),
        Container(
          child: 
          TableCalendar(
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            availableGestures: AvailableGestures.all,
            onDaySelected: _onDaySelected,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2020, 10, 16),
            lastDay: DateTime.utc(2030, 10, 17),
            rowHeight: 40,
          ),
        )
      ],
    ),
  );
}
