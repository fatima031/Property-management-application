import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Create_Team extends StatefulWidget {
  const Create_Team({super.key});

  @override
  State<Create_Team> createState() => _Create_TeamState();
}

class _Create_TeamState extends State<Create_Team> {
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
          'Create Team',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/images/Upload logo.png"),
          ),
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.topLeft, child: const Text("Team Name")),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Team Align",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: const Text("Team Member")),
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
                    "assets/images/Group 1000000747.png",
                  )),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/Group 1000000748.png",
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
          Divider(
            color: Colors.grey,
            height: 30,
            indent: 50,
            endIndent: 50,
            thickness: 1,
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
                        label: Text("Private"),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      const Chip(
                        label: Text("Public"),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Chip(
                          label: Text("Secret"),
                        ),
                      ),
                    ],
                  ),
               const   SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    onPressed: (){}, child:const Text('Create Team'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
