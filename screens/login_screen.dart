import 'package:flutter/material.dart';
import 'package:note_keeper/screens/first_screen.dart';
import 'package:note_keeper/screens/sign_up.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          FlatButton(
            child: Row(
              children: [
                Text("Sign up ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    )),
                Icon(
                  Icons.person_add,
                  color: Colors.white,
                )
              ],
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(SignUp.routeName);
            },
          )
        ],
        leading: Icon(
          Icons.login,
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 600,
              height: 100,
              margin: EdgeInsets.only(bottom: 500, top: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        '''   " Let's ''',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "make",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "THE",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "notes",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '''Digitalized ! " ''',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 260,
                width: 300,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              labelText: 'email', icon: Icon(Icons.email)),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value.isEmpty || !value.contains('@')) {
                              return 'Please enter the valid input';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                              labelText: 'password', icon: Icon(Icons.lock)),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty || value.length <= 6) {
                              return 'invalid password';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 30),
                        FloatingActionButton.extended(
                          label: Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontSize: 17,
                                fontWeight: FontWeight.w800),
                          ),
                          icon: Icon(Icons.save),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MainScreen();
                            }));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 8,
                          splashColor: Colors.white,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: Center(
              child: FloatingActionButton.extended(
                label: Text(
                  "Guest users",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                icon: Icon(Icons.login),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MainScreen();
                  }));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 8,
                splashColor: Colors.white,
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
