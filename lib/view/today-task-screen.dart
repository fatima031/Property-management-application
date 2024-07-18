import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/view/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class Today_Task_Screen extends StatefulWidget {
  const Today_Task_Screen({super.key});

  @override
  State<Today_Task_Screen> createState() => _Today_Task_ScreenState();
}

class _Today_Task_ScreenState extends State<Today_Task_Screen> {

  DateTime today = DateTime.now();

void _onDaySelected(DateTime day, DateTime focusDay) {
  // setState(() {
  //   today = day;
  // });
  today = day;

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit_note,
                  color: Colors.black,
                ))
          ],
          title: const Text(
            'Today Task',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "October, 20  ✍ ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    )),
              ),
          const    SizedBox(
                width: 120,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Calendar()));
                        setState(() {
                          
                        });
                },
                child: Icon(Icons.calendar_month))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
            child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  '15 task today ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                      color: Colors.white70,
                      height: 90,
                      width: 50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("19"), Text("Wed")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                      color: Colors.blueAccent,
                      height: 90,
                      width: 50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("20"), Text("thu")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                      color: Colors.white70,
                      height: 90,
                      width: 50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("21"), Text("fri")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                      color: Colors.white70,
                      height: 90,
                      width: 50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("22"), Text("Sat")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                      color: Colors.white70,
                      height: 90,
                      width: 50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("23"), Text("Sun")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                      color: Colors.white70,
                      height: 90,
                      width: 50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("24"), Text("Mon")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                      color: Colors.white70,
                      height: 90,
                      width: 50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("25"), Text("Tue")],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ),
          Container(
            child:  Padding(
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
            rowHeight: 30,
          ),
        )
      ],
    ),
  )
          )
        ]));
  }
}
