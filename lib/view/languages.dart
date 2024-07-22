import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class Languages extends StatefulWidget {
  Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  int _value = 1;

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
          'Languages',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = val!;
              });
            },
            activeColor: Colors.blue,
            title: const Text("English"),
          ),
          RadioListTile(
          
            value: 2,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = val!;
              });
            },
            activeColor: Colors.blue,
            title: const Text("Bangla"),
          ),
          RadioListTile(
            value: 3,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = val!;
              });
            },
            activeColor: Colors.blue,
            title: const Text("spnish"),
          ),
          RadioListTile(
            value: 4,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = val!;
              });
            },
            activeColor: Colors.green,
            title: const Text("France"),
          )
        ],
      ),
    );
  }
}
