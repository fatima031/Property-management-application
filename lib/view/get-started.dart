import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/view/onBoarding_screen.dart';

class Get_Started extends StatefulWidget {
  const Get_Started({super.key});

  @override
  State<Get_Started> createState() => _Get_StartedState();
}

class _Get_StartedState extends State<Get_Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 350,
          width: 400,
          child: Image.asset("assets/images/image 5.png"),
        ),
        const SizedBox(
          height: 400,
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/Logo.png",
                      // color: Color(0x756EF3),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Building Better",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      "Workplaces",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      "Create a unique website to make that words become",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                    const Text(
                      "that describe better than a word",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Onboarding_screen()));
                        },
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                        ))
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
