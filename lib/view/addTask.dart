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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Mobile Application Design",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
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
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/Group 1000000745.png",
                  )),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                  backgroundColor: Colors.transparent,
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
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "November 01, 2021",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: const Text("Start Time"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        // height: 60,
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "09:30 am",
                            hintStyle:
                                const TextStyle(fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            contentPadding: const EdgeInsets.all(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: const Text("End Time"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        // height: 60,
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "03:30 pm",
                            hintStyle:
                                const TextStyle(fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            contentPadding: const EdgeInsets.all(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(child: const Text("Board")),
                      )),
                  Row(
                    children: [
                      const Chip(
                        label: Text("Urgent"),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      const Chip(
                        label: Text("Running"),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Chip(
                          label: Text("Ongoing"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
       const   SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () {},
              child: const Text('Create Team'))
        ],
      ),
    );
  }
}
