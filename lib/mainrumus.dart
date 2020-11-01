import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class Rumus extends StatefulWidget {
  @override
  _RumusState createState() => _RumusState();
}

class _RumusState extends State<Rumus> {
  TextEditingController sisi = TextEditingController();
  TextEditingController pjg = TextEditingController();
  TextEditingController lbr = TextEditingController();
  TextEditingController aa = TextEditingController();
  TextEditingController bb = TextEditingController();
  TextEditingController cc = TextEditingController();
  TextEditingController dd = TextEditingController();
  TextEditingController tt = TextEditingController();
  TextEditingController aasg = TextEditingController();
  TextEditingController bbs = TextEditingController();
  TextEditingController ccs = TextEditingController();
  TextEditingController tts = TextEditingController();
  int s, p, l, a, b, c, d, t, ke, lu, asg, bs, cs, ts;
  double lusg;
  TabBar mytab = TabBar(tabs: <Widget>[
    Tab(text: "Persegi"),
    Tab(
      text: "Persegi P",
    ),
    Tab(text: "Jajar G"),
    Tab(
      text: "Segitiga",
    )
  ]);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hitung Bangun Datar"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(mytab.preferredSize.height),
            child: Container(
              child: mytab,
            ),
          ),
        ),
        body: TabBarView(children: <Widget>[
          Container(
            child: ListView(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Text("Persegi"),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 20, 40, 5),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blueAccent)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue, width: 2)),
                                    labelText: "Sisi"),
                                controller: sisi,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 40),
                                child: RaisedButton(
                                  color: Colors.blue[700],
                                  onPressed: () {
                                    if (sisi.text.length == 0) {
                                      Fluttertoast.showToast(
                                          msg: "Field Tidak Boleh Kosong",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.TOP,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    } else {
                                      s = int.tryParse(sisi.text);
                                      ke = 4 * s;
                                      lu = s * s;
                                      showDialog(
                                          context: context,
                                          builder: (_) => FlareGiffyDialog(
                                                flarePath:
                                                    'assets/space_demo.flr',
                                                flareAnimation: 'loading',
                                                title: Text(
                                                  'Keliling dan Luas Persegi',
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                description: Text(
                                                  "Keliling : " +
                                                      ke.toString() +
                                                      "\n Luas : " +
                                                      lu.toString(),
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                entryAnimation:
                                                    EntryAnimation.DEFAULT,
                                                onOkButtonPressed: () {},
                                              ));
                                    }
                                  },
                                  child: Text("Cari Luas Dan Keliling"),
                                  textColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Container(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Text("Persegi Panjang"),
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 20, 40, 5),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2)),
                                        labelText: "Panjang"),
                                    controller: pjg,
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue, width: 2)),
                                      labelText: "Lebar"),
                                  controller: lbr,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  child: RaisedButton(
                                    color: Colors.blue[700],
                                    onPressed: () {
                                      if (pjg.text.length == 0 ||
                                          lbr.text.length == 0) {
                                        Fluttertoast.showToast(
                                            msg: "Field Tidak Boleh Kosong",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.TOP,
                                            backgroundColor: Colors.red,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      } else {
                                        p = int.tryParse(pjg.text);
                                        l = int.tryParse(lbr.text);
                                        ke = (2 * p) + (2 * l);
                                        lu = p * l;
                                        showDialog(
                                            context: context,
                                            builder: (_) => FlareGiffyDialog(
                                                  flarePath:
                                                      'assets/space_demo.flr',
                                                  flareAnimation: 'loading',
                                                  title: Text(
                                                    "Keliling dan Luas Persegi Panjang",
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  description: Text(
                                                    "Keliling : " +
                                                        ke.toString() +
                                                        "\n Luas : " +
                                                        lu.toString(),
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  entryAnimation:
                                                      EntryAnimation.DEFAULT,
                                                  onOkButtonPressed: () {},
                                                ));
                                      }
                                    },
                                    child: Text("Cari Luas Dan Keliling"),
                                    textColor: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Text("Jajar Genjang"),
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 20, 40, 5),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2)),
                                        labelText: "sisi A"),
                                    controller: aa,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2)),
                                        labelText: "sisi B"),
                                    controller: bb,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2)),
                                        labelText: "sisi C"),
                                    controller: cc,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2)),
                                        labelText: "sisi D"),
                                    controller: dd,
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue, width: 2)),
                                      labelText: "Tinggi"),
                                  controller: tt,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  child: RaisedButton(
                                    color: Colors.blue[700],
                                    onPressed: () {
                                      if (aa.text.length == 0 ||
                                          bb.text.length == 0 ||
                                          cc.text.length == 0 ||
                                          dd.text.length == 0 ||
                                          tt.text.length == 0) {
                                        Fluttertoast.showToast(
                                            msg: "Field Tidak Boleh Kosong",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.TOP,
                                            backgroundColor: Colors.red,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      } else {
                                        a = int.tryParse(aa.text);
                                        b = int.tryParse(bb.text);
                                        c = int.tryParse(cc.text);
                                        d = int.tryParse(dd.text);
                                        t = int.tryParse(tt.text);
                                        ke = a + b + c + d;
                                        lu = a * t;
                                        showDialog(
                                            context: context,
                                            builder: (_) => FlareGiffyDialog(
                                                  flarePath:
                                                      'assets/space_demo.flr',
                                                  flareAnimation: 'loading',
                                                  title: Text(
                                                    "Keliling dan Luas Jajar Genjang",
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  description: Text(
                                                    "Keliling : " +
                                                        ke.toString() +
                                                        "\n Luas : " +
                                                        lu.toString(),
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  entryAnimation:
                                                      EntryAnimation.DEFAULT,
                                                  onOkButtonPressed: () {},
                                                ));
                                      }
                                    },
                                    child: Text("Cari Luas Dan Keliling"),
                                    textColor: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Text("Segitiga"),
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 20, 40, 5),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2)),
                                        labelText: "sisi A"),
                                    controller: aasg,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2)),
                                        labelText: "sisi B"),
                                    controller: bbs,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2)),
                                        labelText: "sisi C"),
                                    controller: ccs,
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue, width: 2)),
                                      labelText: "Tinggi"),
                                  controller: tts,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  child: RaisedButton(
                                    color: Colors.blue[700],
                                    onPressed: () {
                                      if (aasg.text.length == 0 ||
                                          bbs.text.length == 0 ||
                                          ccs.text.length == 0 ||
                                          tts.text.length == 0) {
                                        Fluttertoast.showToast(
                                            msg: "Field Tidak Boleh Kosong",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.TOP,
                                            backgroundColor: Colors.red,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      } else {
                                        asg = int.tryParse(aasg.text);
                                        bs = int.tryParse(bbs.text);
                                        cs = int.tryParse(ccs.text);
                                        ts = int.tryParse(tts.text);
                                        ke = asg + bs + cs;
                                        lusg = 1 / 2 * (asg * ts);
                                        showDialog(
                                            context: context,
                                            builder: (_) => FlareGiffyDialog(
                                                  flarePath:
                                                      'assets/space_demo.flr',
                                                  flareAnimation: 'loading',
                                                  title: Text(
                                                    "Keliling dan Luas Segitiga",
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  description: Text(
                                                    "Keliling : " +
                                                        ke.toString() +
                                                        "\n Luas : " +
                                                        lusg.toString(),
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  entryAnimation:
                                                      EntryAnimation.DEFAULT,
                                                  onOkButtonPressed: () {},
                                                ));
                                      }
                                    },
                                    child: Text("Cari Luas Dan Keliling"),
                                    textColor: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
