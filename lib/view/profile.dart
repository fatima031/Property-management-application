import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          'Task Status',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
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
                      "Edit",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.alarm_add),
                  Text(
                    "5",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "ongoing",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.rtt_outlined),
                  Text(
                    "25",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "Total complete",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    
                  },
                  shape: BeveledRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                      width: 0.3
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  title: const Text("My Project"),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              const  SizedBox(height: 20,),
                ListTile(
                  onTap: () {
                    
                  },
                  shape: BeveledRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                      width: 0.3
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  title: const Text("My Project"),
                  trailing: const Icon(Icons.arrow_forward),
                ),
           const     SizedBox(height: 20,),
                ListTile(
                  onTap: () {
                    
                  },
                  shape: BeveledRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                      width: 0.3
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  title: const Text("My Project"),
                  trailing: const Icon(Icons.arrow_forward),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
