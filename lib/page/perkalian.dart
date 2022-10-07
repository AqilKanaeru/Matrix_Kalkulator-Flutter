import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrix_kk/page/pengurangan.dart';
import 'package:matrix_kk/page/penjumlahan.dart';

class perkalianPage extends StatefulWidget {
  const perkalianPage({Key? key}) : super(key: key);

  @override
  State<perkalianPage> createState() => _penjumlahanpageState();
}

class _penjumlahanpageState extends State<perkalianPage> {
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  int f = 0;
  int g = 0;
  int h = 0;
  int ae = 0;
  int bg = 0;
  int ce = 0;
  int dg = 0;
  int af = 0;
  int bh = 0;
  int cf = 0;
  int dh = 0;
  final TextEditingController _acntrl = TextEditingController();
  final TextEditingController _bnctrl = TextEditingController();
  final TextEditingController _cnctrl = TextEditingController();
  final TextEditingController _dnctrl = TextEditingController();
  final TextEditingController _enctrl = TextEditingController();
  final TextEditingController _fnctrl = TextEditingController();
  final TextEditingController _gnctrl = TextEditingController();
  final TextEditingController _hnctrl = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Multiplication"),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          ],
        ),
        key: _scaffoldKey,
        endDrawerEnableOpenDragGesture: false,
        endDrawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                      image: NetworkImage(
                          "https://www.ruangguru.com/hubfs/Header-_rev_matematika_matriks.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                title: const Text(
                  'summation',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => penjumlahanpage(),
                      ));
                },
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                title: const Text(
                  'subtraction',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PenguranganPage(),
                      ));
                },
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "x",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                title: const Text(
                  'multiplication',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _acntrl,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: "A",
                          labelStyle: new TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                        controller: _bnctrl,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: "B",
                            labelStyle: new TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _cnctrl,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: "C",
                          labelStyle: new TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                        controller: _dnctrl,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: "D",
                            labelStyle: new TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 30),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "x",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _enctrl,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: "E",
                          labelStyle: new TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                        controller: _fnctrl,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: "F",
                            labelStyle: new TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _gnctrl,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: "G",
                          labelStyle: new TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                        controller: _hnctrl,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: "H",
                            labelStyle: new TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 30),
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        a = int.parse(_acntrl.text);
                        b = int.parse(_bnctrl.text);
                        c = int.parse(_cnctrl.text);
                        d = int.parse(_dnctrl.text);
                        e = int.parse(_enctrl.text);
                        f = int.parse(_fnctrl.text);
                        g = int.parse(_gnctrl.text);
                        h = int.parse(_hnctrl.text);
                      });
                      ae = a * e;
                      bg = b * g;
                      af = a * f;
                      bh = b * h;
                      ce = c * e;
                      dg = d * g;
                      cf = c * f;
                      dh = d * h;
                      a = ae + bg;
                      b = af + bh;
                      c = ce + dg;
                      d = cf + dh;
                    },
                    child: Text(
                      "=",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Result :",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        a.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: SizedBox(
                        width: 100,
                        child: Text(
                          b.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      c.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        d.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
