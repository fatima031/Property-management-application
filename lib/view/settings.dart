import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                      onTap: () {
                        
                      },
                      shape: BeveledRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.3
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      title: const Text("Permission"),
                      trailing: const Icon(Icons.smart_button_sharp),
                    ),
                const    SizedBox(height: 10,),
                    ListTile(
                      onTap: () {
                        
                      },
                      shape: BeveledRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.3
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      title: const Text("Dark Mode"),
                      trailing: const Icon(Icons.dark_mode),
                    ),
                 const   SizedBox(height: 10,),
                    ListTile(
                      onTap: () {
                        
                      },
                      shape: BeveledRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.3
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      title: const Text("Push Notification"),
                      trailing: const Icon(Icons.smart_button_sharp),
                    ),
             const       SizedBox(height: 10,),
                    ListTile(
                      onTap: () {
                        
                      },
                      shape: BeveledRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.3
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      title: const Text("Help"),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                 const   SizedBox(height: 10,),
                    ListTile(
                      onTap: () {
                        
                      },
                      shape: BeveledRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.3
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      title: const Text("Security"),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
               const     SizedBox(height: 10,),
                    ListTile(
                      onTap: () {
                        
                      },
                      shape: BeveledRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.3
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      title: const Text("Language"),
                    trailing: const Icon(Icons.arrow_forward),
                    ),
                 const   SizedBox(height: 10,),
                    ListTile(
                      onTap: () {
                        
                      },
                      shape: BeveledRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.3
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      title: const Text("About Application"),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                   const SizedBox(height: 10,),
            ],
          ),
        )
    );
  }
}