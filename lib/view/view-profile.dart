import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View_profile extends StatefulWidget {
  const View_profile({super.key});

  @override
  State<View_profile> createState() => _View_profileState();
}

class _View_profileState extends State<View_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Image.asset("assets/images/Group 18060.png"),
                ),
                const Text(
                  "Alvert Ainstain",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "@alvertainstain.com",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey.shade300)),
                    onPressed: () {},
                    child: const Text(
                      "View Profile",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Work Space",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  onTap: () {},
                  shape: BeveledRectangleBorder(
                      side: const BorderSide(color: Colors.black, width: 0.3),
                      borderRadius: BorderRadius.circular(15)),
                  title: const Text("My Projects"),
                  trailing:
                      TextButton(onPressed: () {}, child: const Text("invite")),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Manage",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Card(
                          child: Card(
                            elevation: 0,
                            borderOnForeground: true,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Text("team"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("8"))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Card(
                          child: Card(
                            elevation: 0,
                            borderOnForeground: true,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Text("Task"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("8"))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Card(
                          child: Card(
                            elevation: 0,
                            borderOnForeground: true,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Text("Label"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("8"))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Card(
                          child: Card(
                            elevation: 0,
                            borderOnForeground: true,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Text("Member"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("8"))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Logout"))
        ],
      ),
    );
  }
}
