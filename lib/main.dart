import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:propertymanagmentapp/firebase_options.dart';
import 'package:propertymanagmentapp/view/dashBoard.dart';
// import 'package:propertymanagmentapp/view/homeView.dart';
// import 'package:propertymanagmentapp/view/splash.dart';

// import 'view/onBoarding_screen.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Property Managment Application',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
