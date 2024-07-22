import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/view/chats.dart';
import 'package:propertymanagmentapp/view/profile.dart';
import 'package:propertymanagmentapp/view/projects.dart';

import 'homeView.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget currentScreen = const Dashboard();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    myTile(Icon(Icons.create), Text("Create Task")),
                    myTile(Icon(Icons.add_home_work_rounded),
                        Text("Create Project")),
                    myTile(Icon(Icons.people), Text("Create Team")),
                    myTile(Icon(Icons.event), Text('Create Event')),
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 0;
                    currentScreen = const HomeView();
                  });
                },
                child: Icon(
                  Icons.home,
                  color: activeTab == 1 ? Colors.blue : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 1;
                    currentScreen = const Projects();
                  });
                },
                child: Icon(
                  Icons.work,
                  color: activeTab == 2 ? Colors.blue : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 2;
                    currentScreen = const Chats();
                  });
                },
                child: Icon(
                  Icons.chat,
                  color: activeTab == 3 ? Colors.blue : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 3;
                    currentScreen = const Profile();
                  });
                },
              ),
            ],
          ),
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   foregroundColor: Colors.transparent,
      //   onPressed: (){}, child: Icon(Icons.add),),
    );
  }
}
