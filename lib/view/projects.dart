import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List searchResult = [];

  void searchFromFirebase(String query) async {
    final result = await FirebaseFirestore.instance
        .collection('search')
        //
        .where('number_id', arrayContains: query)
        .get();
    setState(() {
      searchResult = result.docs.map((e) => e.data()).toList();
    });
  }

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
                  Icons.add,
                  color: Colors.black,
                ))
          ],
          title: const Text(
            'Projects',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search here',
              ),
              onChanged: (query) {
                searchFromFirebase(query);
              },
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Text("favourites"),
                  const SizedBox(
                    width: 45,
                  ),
                  const Text("Recents"),
                  const SizedBox(
                    width: 45,
                  ),
                  const Text("All"),
                  const SizedBox(
                    width: 55,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.category))
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: searchResult.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(searchResult[index]['number_id']),
                      subtitle: Text(searchResult[index]['string_id']),
                    );
                  }))
        ]));
  }
}
