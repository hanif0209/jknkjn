import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Umur extends StatefulWidget {
  @override
  _UmurState createState() => _UmurState();
}

class _UmurState extends State<Umur> {
  DateTime now = DateTime.now();
  TextEditingController tahun = TextEditingController();
  TextEditingController bulan = TextEditingController();
  TextEditingController hari = TextEditingController();
  String desc;
  String titlee = "Umur Anda";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Hitung Umur"),
      ),
      body: ListView(children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.fromLTRB(20, 100, 20, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Inputkan Data Tanggal Lahir Anda",
                    style: TextStyle(fontSize: 18, color: Colors.amber[900]),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  child: TextField(
                    controller: tahun,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber[700])),
                        labelText: "Tahun",
                        labelStyle: TextStyle(color: Colors.amber[700])),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  child: TextField(
                    controller: bulan,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber[700])),
                        labelText: "Bulan",
                        labelStyle: TextStyle(color: Colors.green[700])),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  child: TextField(
                    controller: hari,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber[700])),
                        labelText: "Hari",
                        labelStyle: TextStyle(color: Colors.red[700])),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    backgroundColor: Colors.amber[900],
                    onPressed: () {
                      if (tahun.text.length == 0 ||
                          bulan.text.length == 0 ||
                          hari.text.length == 0) {
                        Fluttertoast.showToast(
                            msg: "Field Tidak Boleh Ada yang Kosong",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else if (int.tryParse(tahun.text) >
                          int.tryParse(now.year.toString())) {
                        Fluttertoast.showToast(
                            msg: "Nilai Tahun Tidak Valid",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else if (int.tryParse(bulan.text) >
                              int.tryParse(now.month.toString()) &&
                          int.tryParse(tahun.text) >=
                              int.tryParse(now.year.toString())) {
                        Fluttertoast.showToast(
                            msg: "Nilai Bulan Tidak Valid",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else if (int.tryParse(bulan.text) > 12) {
                        Fluttertoast.showToast(
                            msg: "Nilai Bulan Tidak Valid",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else if (int.tryParse(bulan.text) >=
                              int.tryParse(now.month.toString()) &&
                          int.tryParse(tahun.text) >=
                              int.tryParse(now.year.toString()) &&
                          int.tryParse(hari.text) >
                              int.tryParse(now.day.toString())) {
                        Fluttertoast.showToast(
                            msg: "Nilai Hari Tidak Valid",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else if (int.tryParse(hari.text) > 31) {
                        Fluttertoast.showToast(
                            msg: "Nilai Hari Tidak Valid",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else {
                        int utahun, ubulan, uhari;
                        utahun = int.tryParse(now.year.toString()) -
                            int.tryParse(tahun.text);
                        ubulan = int.tryParse(now.month.toString()) -
                            int.tryParse(bulan.text);
                        uhari = int.tryParse(now.day.toString()) -
                            int.tryParse(hari.text);

                        // int ttahun, tbulan, thari;
                        //validasi hari minus
                        if (uhari < 0) {
                          ubulan -= 1;
                          uhari = 30 + uhari;
                        }
                        //validasi bulan minus
                        if (ubulan < 0) {
                          utahun -= 1;
                          ubulan = 12 + ubulan;
                        }

                        if (uhari == 0 && utahun > 0 && ubulan > 0) {
                          desc = utahun.toString() +
                              " Tahun " +
                              ubulan.toString() +
                              " Bulan";
                        } else if (uhari > 0 && utahun > 0 && ubulan == 0) {
                          desc = utahun.toString() +
                              " Tahun " +
                              uhari.toString() +
                              " Hari";
                        } else if (uhari > 0 && utahun == 0 && ubulan == 0) {
                          desc = uhari.toString() + " Hari";
                        } else if (uhari == 0 && utahun == 0 && ubulan == 0) {
                          titlee = "Selamat Hari Ini Kelahiran Anda";
                          desc = "Congratulation";
                        }
                        titlee = "Umur Anda";
                        showDialog(
                            context: context,
                            builder: (_) => AssetGiffyDialog(
                                  image: Image.asset('assets/gif14.gif'),
                                  title: Text(
                                    titlee,
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  description: Text(
                                    desc,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(),
                                  ),
                                  entryAnimation: EntryAnimation.BOTTOM_RIGHT,
                                  onOkButtonPressed: () {},
                                ));
                      }
                    },
                    child: Icon(
                      Icons.zoom_in,
                      size: 45,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
