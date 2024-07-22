import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/Models/userModel.dart';

class search_Dashboard extends StatefulWidget {
  final UserModel userModel;
  final UserModel firebaseUser;
  const search_Dashboard(
      {super.key, required this.userModel, required this.firebaseUser});

  @override
  State<search_Dashboard> createState() => _search_DashboardState();
}

class _search_DashboardState extends State<search_Dashboard> {
  // List searchResult = [];
  // void searchFromFirebase(String query) async {
  //   final result = await FirebaseFirestore.instance
  //       .collection('search')
  //       //
  //       .where('number_id', arrayContains: query)
  //       .get();
  //   setState(() {
  //     searchResult = result.docs.map((e) => e.data()).toList();
  //   });
  // }

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
            'Search',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
        ),
        body:
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Search here',
                ),
              ),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Task",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "File",
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            )
          ]),
        ));
  }
}
