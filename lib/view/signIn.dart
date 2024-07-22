import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/view/signup.dart';
import '../Models/uiHelper.dart';
import '../Models/userModel.dart';
import 'homeView.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkValues() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email == "" || password == "") {
      UIHelper.showAlertDialog(
          context, "Incomplete Data", "Please fill all the fields");
    } else {
      // logIn(email, password);
      _signIn();
    }
  }

  // void logIn(String email, String password) async {
  //   UserCredential? credential;

  //   UIHelper.showLoadingDialog(context, "Logging In..");

  //   try {
  //     credential = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: email, password: password);
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => HomeView()));
  //   } on FirebaseAuthException catch (ex) {
  //     // Close the loading dialog

  //     // Show Alert Dialog
  //     UIHelper.showAlertDialog(
  //         context, "An error occured", ex.message.toString());
  //   }

  //   if (credential != null) {
  //     String uid = credential.user!.uid;

  //     DocumentSnapshot userData =
  //         await FirebaseFirestore.instance.collection('users').doc(uid).get();
  //     UserModel userModel =
  //         UserModel.fromMap(userData.data() as Map<String, dynamic>);

  //     // Go to HomePage
  //     print("Log In Successful!");
  //     // Navigator.popUntil(context, (route) => route.isFirst);
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
  //       return HomeView();
  //       //    HomePage(
  //       //       userModel: userModel, firebaseUser: credential!.user!);
  //       // }),
  //     }));
  //   }
  // }
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> _signIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // Navigate to another screen if needed
      setState(() {
        // _errorMessage = 'Login successful!';
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeView()));
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        // _errorMessage = e.message!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SignIn"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Please enter your email",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "and password for Login",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: "Email Address"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                SizedBox(
                  height: 20,
                ),
                CupertinoButton(
                  onPressed: () {
                    // checkValues();
                    _signIn();
                  },
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text("Log In"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.apple)),
                    const SizedBox(
                      width: 50,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.abc,
                          color: Colors.red,
                        ))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 16),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SignUpPage();
                          }),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       "Don't have an account?",
      //       style: TextStyle(fontSize: 16),
      //     ),
      //     CupertinoButton(
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) {
      //             return SignUpPage();
      //           }),
      //         );
      //       },
      //       child: Text(
      //         "Sign Up",
      //         style: TextStyle(fontSize: 16),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
