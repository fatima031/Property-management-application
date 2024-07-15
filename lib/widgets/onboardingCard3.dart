import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/view/signIn.dart';
import 'package:propertymanagmentapp/view/signup.dart';

class OnBoardingCard3 extends StatelessWidget {
  const OnBoardingCard3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                // height: 350,
                // width: 400,
                child: Image.asset(
                  "assets/images/multi-image.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset("assets/images/Image 1 (2).png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 120,
                        width: 200,
                        child: Image.asset(
                          "assets/images/multi-image-3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Task Managment",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Manage Your Tasks Quickly",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "  for Result",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Image.asset("assets/images/Next Button (1).png"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
