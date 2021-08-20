import 'package:flutter/material.dart';
import 'package:note_keeper/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/signUp';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

  void _login() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "sign up",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          FlatButton(
            child: Row(
              children: [
                Text(
                  "Login ",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Icon(
                  Icons.person,
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
        leading: Icon(
          Icons.login_outlined,
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 320,
                width: 300,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              icon: Icon(Icons.email_rounded)),
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
                          decoration: InputDecoration(
                              labelText: 'password', icon: Icon(Icons.lock)),
                          obscureText: true,
                          controller: _passwordController,
                          validator: (value) {
                            if (value.isEmpty || value.length <= 6) {
                              return 'invalid password';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'confirm password',
                              icon: Icon(Icons.remove_red_eye)),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty ||
                                value != _passwordController.text) {
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
                              return LoginScreen();
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
          )
        ],
      ),
    );
  }
}
