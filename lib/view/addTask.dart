import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Task extends StatefulWidget {
  const Add_Task({super.key});

  @override
  State<Add_Task> createState() => _Add_TaskState();
}

class _Add_TaskState extends State<Add_Task> {
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
        title: const Text(
          'Add Task',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.topLeft, child: const Text("Task Name")),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Mobile Application Design",
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.topLeft, child: const Text("Team Member")),
          ),
          Row(
            children: [
              CircleAvatar(
                  child: Image.asset(
                "assets/images/Group 1000000745.png",
              )),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                  child: Image.asset(
                "assets/images/Group 1000000746.png",
              )),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/Group 1000000747.png",
                  )),
              const SizedBox(
                width: 5,
              ),
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/Group 1000000750.png",
                  )),
              const SizedBox(
                width: 15,
              ),
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                      visualDensity: VisualDensity.compact,
                      onPressed: () {},
                      icon: const Icon(Icons.add)))
            ],
          )
        ],
      ),
    );
  }
}
