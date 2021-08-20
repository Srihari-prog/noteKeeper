import 'package:flutter/material.dart';
import 'package:note_keeper/screens/first_screen.dart';
import 'package:note_keeper/screens/login_screen.dart';
import 'package:note_keeper/screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notekeeper",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginScreen(),
      routes: {
        SignUp.routeName: (ctx) => SignUp(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        MainScreen.routeName: (ctx) => MainScreen(),
      },
    );
  }
}
