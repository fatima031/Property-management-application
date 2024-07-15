import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/view/signIn.dart';
// import 'package:propertymanagmentapp/view/signup.dart';
import 'package:propertymanagmentapp/widgets/onboardingCard3.dart';

class OnBoardingCard2 extends StatelessWidget {
  const OnBoardingCard2({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: MediaQuery.sizeOf(context).height * 00.0,
    //   width: MediaQuery.sizeOf(context).width * 00.0,
    //   child: SingleChildScrollView(
    //     child: Column(
    //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Align(
    //             alignment: Alignment.bottomLeft,
    //             child: Image.asset("assets/images/Image 2.png")),
    //         Image.asset("assets/images/Image 1.png"),
    //         Image.asset("assets/images/Image 1 (1).png"),
    //         Column(
    //           // mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             const Text(
    //               "Task Managment",
    //               textAlign: TextAlign.start,
    //               style: TextStyle(
    //                   color: Colors.blue,
    //                   fontStyle: FontStyle.italic,
    //                   fontWeight: FontWeight.bold),
    //             ),
    //             const Padding(
    //               padding: EdgeInsets.all(8.0),
    //               child: Text(
    //                 "Lest Create a space for  your",
    //                 textAlign: TextAlign.start,
    //                 style: TextStyle(color: Colors.black, fontSize: 25),
    //               ),
    //             ),
    //             const Padding(
    //               padding: EdgeInsets.all(8.0),
    //               child: Text(
    //                 "  work flow",
    //                 textAlign: TextAlign.start,
    //                 style: TextStyle(color: Colors.black, fontSize: 25),
    //               ),
    //             ),
    //             Row(
    //               children: [
    //                 GestureDetector(
    //                     onTap: () {},
    //                     child: Text(
    //                       "Skip",
    //                       style: TextStyle(
    //                           fontSize: 20, fontWeight: FontWeight.bold),
    //                     )),
    //                 SizedBox(
    //                   width: 180,
    //                 ),
    //                 GestureDetector(
    //                     onTap: () {},
    //                     child: Image.asset("assets/images/Next Button (1).png"))
    //               ],
    //             )
    //           ],
    //         )
    //       ],
    //     ),
    //   ),
    // );
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                // height: 350,
                // width: 400,
                child: Image.asset(
                  "assets/images/Image 2.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset("assets/images/Image 1.png"),
                    ),
               const     SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:  Container(
                        height: 120,
                        width: 200,
                        child: Image.asset(
                          "assets/images/Image 1 (1).png",
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
                    "Work More Structure And",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "  Organization",
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
           const         SizedBox(
                      width: 180,
                    ),
                    GestureDetector(
                        onTap: () {
                           Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnBoardingCard3()));
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
