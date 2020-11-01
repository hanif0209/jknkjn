import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'mainhome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String nusername = "";
  String npassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: ListView(children: [
          Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.fromLTRB(20, 100, 20, 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: username,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.purple)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple)),
                        labelText: "Username"),
                  ),
                  TextField(
                    obscureText: true,
                    controller: password,
                    decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.purple)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple)),
                        labelText: "Password"),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          color: Colors.green,
                          onPressed: () {
                            setState(() {
                              nusername = username.text;
                              npassword = password.text;
                              if (nusername == "admin" &&
                                  npassword == "admin") {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Home();
                                }));
                              } else {
                                Fluttertoast.showToast(
                                    msg: "Password / Username Salah",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.TOP,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }
                            });
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        RaisedButton(
                          color: Colors.blueGrey,
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
