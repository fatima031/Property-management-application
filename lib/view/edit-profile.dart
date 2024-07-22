import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
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
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            TextButton(onPressed: (){}, child: Text("Save", style: TextStyle(color: Colors.blueAccent),))
          ],
        ),
        body:  Column(
          children: [
            Stack(
              children: [
             const   Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage("assets/images/Group 18060.png"),
                        
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 200,
                  bottom: 20,
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera_enhance, size: 20,)))
              ],
            ),

            Expanded(child: Column(
              children: [
                Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
                alignment: Alignment.topLeft, child: const Text(" Name")),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                hintText: "Type name here",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
                alignment: Alignment.topLeft, child: const Text("Email")),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                hintText: "Email@gmail.com",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft, child: const Text("User Name")),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                hintText: "aabbccdd",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft, child: const Text(" Number")),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                hintText: "0011223344",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
         
              ],
            ))
          ],
        ));
  }
}
