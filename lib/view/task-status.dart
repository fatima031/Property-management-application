import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Task_Status extends StatefulWidget {
  const Task_Status({super.key});

  @override
  State<Task_Status> createState() => _Task_StatusState();
}

class _Task_StatusState extends State<Task_Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter,
                  color: Colors.black,
                ))
          ],
          title: const Text(
            'Task Status',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Column(children: [
          Center(
              child: CircularPercentIndicator(
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 0.6,
            progressColor: Colors.blueAccent,
            backgroundColor: Colors.orange,
            circularStrokeCap: CircularStrokeCap.round,
            center: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("65%"), Text("Completed")],
            ),
          )),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          child: const CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text("Todo")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          child: const CircleAvatar(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text("inprogress")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          child: const CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text("Completed")
                      ],
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Monthly",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  onTap: () {},
                  shape: BeveledRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 0.3),
                      borderRadius: BorderRadius.circular(15)),
                  title: Text("Completed"),
                  subtitle: Text("1B Task now, 1B completed"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                    onTap: () {
                      
                    },
                    shape: BeveledRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 0.3
                      ),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    title: Text("Inprogress"),
                    subtitle: Text("2 Task now , 1 started"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                    onTap: () {
                      
                    },
                    shape: BeveledRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 0.3
                      ),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    title: Text("Todo"),
                    subtitle: Text("2 Task now.. - 1 upcoming"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  
              ),
            
            ],
          )
        ]));
  }
}
