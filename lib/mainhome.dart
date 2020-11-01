import 'package:flutter/material.dart';
import 'package:task3_1/mainrumus.dart';
import 'package:task3_1/mainumur.dart';
import 'main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.amber,
            title: Text("Home"),
            actions: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 20),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      splashColor: Colors.amber[100],
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Icon(Icons.exit_to_app)))
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Colors.amber, Colors.green],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: SizedBox(
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amber,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rumus()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.exposure,
                              size: 40,
                              color: Colors.white,
                            ),
                            Text(
                              "Bangun Datar",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Colors.green, Colors.grey],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: SizedBox(
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.grey,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Umur()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(30),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 40,
                              color: Colors.white,
                            ),
                            Text(
                              "Hitung Umur ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
