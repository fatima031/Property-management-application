import 'dart:async';
import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/view/get-started.dart';
// import 'package:propertymanagmentapp/view/onBoarding_screen.dart';
// import 'package:tahirqadriabayat/views/welcome.dart';

class splash_view extends StatefulWidget {
  const splash_view({super.key});

  @override
  State<splash_view> createState() => splash_viewState();
}

class splash_viewState extends State<splash_view> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Get_Started()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/image 5.png"),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
