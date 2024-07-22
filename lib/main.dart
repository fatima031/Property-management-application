import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/firebase_options.dart';
// import 'package:propertymanagmentapp/Models/provided_themes.dart';
// import 'package:propertymanagmentapp/view/languages.dart';
import 'package:propertymanagmentapp/view/splash.dart';
// import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    return const MaterialApp(
      // theme: themeProvider.themeData,
      title: 'Property Managment Application',
      debugShowCheckedModeBanner: false,
      home: splash_view(),
    );
  }
}
