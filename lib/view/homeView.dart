import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.calculate_rounded,
              color: Colors.black,
            )),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_rounded,
                color: Colors.black,
              ))
        ],
        title: Text(
          'Friday, 26',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
            child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Let’s make a ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
            child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'habits together  🙌 ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.topLeft,
                height: 180,
                width: 700,
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(40)),
                child: const Stack(
                  children: [
                    Positioned(
                        top: 40,
                        left: 20,
                        child: Text("Application Design",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white))),
                    Positioned(
                        top: 70,
                        left: 30,
                        child: Text("Application Design Kit",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                                color: Colors.grey))),
                                
                  ],
                )),
          )
        ],
      ),
    );
  }
}
