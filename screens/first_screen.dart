import 'package:flutter/material.dart';
import 'package:note_keeper/screens/login_screen.dart';
import 'package:note_keeper/NavBar.dart';

import 'note_list.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          FlatButton(
            child: Row(
              children: [
                Text("back ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                Icon(
                  Icons.logout,
                  color: Colors.white,
                )
              ],
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
          )
        ],
        backgroundColor: Colors.black,
      ),
      drawer: NavBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2)),
              child: Center(
                child: Text("---> Let's make the Notes Digitalized!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic)),
              ),
            ),
          ),
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 2)),
                child: Center(
                  child: Text("Organise your Ideas! <---",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic)),
                )),
          ),
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 2)),
                child: Center(
                  child: Text("---> Hang out with you Everywhere!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic)),
                )),
          ),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 20),
            height: 70,
            width: 310,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 2)),
            child: Center(
                child: Text(
              "Stay active and engagged during your lectures!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.7,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            )),
          )),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 70),
              height: 50,
              width: 295,
              child: Row(
                children: [
                  Expanded(
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        _alertInfo(context);
                      },
                      backgroundColor: Colors.grey,
                      tooltip: 'covid cases',
                      elevation: 10,
                      splashColor: Colors.black,
                      label: Text(
                        "covid",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700),
                      ),
                      icon: Icon(
                        Icons.info,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 15,
                  ),
                  Expanded(
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return NoteList();
                        }));
                      },
                      label: Text(
                        "Let's Go",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic),
                      ),
                      icon: Icon(Icons.arrow_right_sharp),
                      splashColor: Colors.white,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      elevation: 15,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _alertInfo(BuildContext context) {
    var alertDialog =
        AlertDialog(title: Text("India..."), content: Text('''Cases: 3.16Cr
Recovered: 3.07Cr
Deaths: 4.23L'''));

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
