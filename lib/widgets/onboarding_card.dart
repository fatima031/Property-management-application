import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/view/signIn.dart';
// import 'package:propertymanagmentapp/view/signup.dart';
import 'package:propertymanagmentapp/widgets/onBoardingCard2.dart';

class OnboardingCard extends StatelessWidget {
  // final String image;
  const OnboardingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 00.0,
      width: MediaQuery.sizeOf(context).width * 00.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Image 3.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Image 2.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Image 1 (1).png"),
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
                      "Lest Create a space for  your",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "  work flow",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
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
                      const SizedBox(
                        width: 180,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnBoardingCard2()));
                          },
                          child:
                              Image.asset("assets/images/Next Button (1).png"))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
