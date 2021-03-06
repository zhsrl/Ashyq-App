import 'dart:io';

import 'package:ashyq_app/main.dart';
import 'package:ashyq_app/page/qr_page.dart';
import 'package:ashyq_app/page/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
  var logoAsset = 'assets/logo_main.png';
  var qrCode = 'Unknown';

  var _data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
              width: 500,
              height: 240,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                    0.3,
                    1
                  ],
                      colors: [
                    Color.fromRGBO(11, 118, 228, 2.0),
                    Color.fromRGBO(4, 61, 164, 1.0)
                  ]))),
          Padding(
              padding: EdgeInsets.all(40),
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        logoAsset,
                        width: 110,
                        height: 80,
                      ),
                      Container(
                          padding: EdgeInsets.all(5),
                          width: 115,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 60, 149, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text('Инструкция для регистрации входа',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontFamily: 'SF Pro Display'))))
                    ],
                  )))
        ],
      ),
      Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 18, top: 20, bottom: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Для пользователей',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro Display')))),
            GestureDetector(
                onTap: () {
                  _scanQRPage();
                  // (context) => scanQRPage();
                },
                child: Container(
                    padding: EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 10),
                    width: 380,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(231, 232, 243, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Регистрация входа',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.bold)),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 120,
                          height: 120,
                          alignment: Alignment.bottomRight,
                          child: Image.network(
                              'https://cdn.pixabay.com/photo/2013/07/13/10/08/code-156629_1280.png'),
                        )
                      ],
                    )))
          ],
        ),
      )
    ]));
  }

  _scanQRPage() async {
    await FlutterBarcodeScanner.scanBarcode(
            '#000000', 'Шығу', true, ScanMode.QR)
        .then((value) => setState(() => _data = value));

    if(_data != "-1"){
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder:(context) => ResultPage()));
      });

    }else{
      setState(() {
        _data = 'Scan canceled';
      });
    }

    // Navigator.push(context, MaterialPageRoute(builder:(context) => ResultPage()));
  }
}
