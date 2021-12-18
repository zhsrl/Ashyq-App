import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 400,
            child: Stack(
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    child: Center(
                        child: Text('Профиль',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22))),
                    width: 600,
                    height: 160,
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
                Positioned(
                    top: 120,
                    left: 25,
                    child: Container(
                        width: 340,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Center(
                              child: Column(
                            children: <Widget>[
                              Text('ИИН',
                                  style: TextStyle(
                                      color: Color.fromRGBO(170, 183, 228, 1),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('010222550444',style: TextStyle(
                                      height: 2,
                                      
                                      letterSpacing: -1,
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700)),
                              Container(
                              
                                width: 180,
                                height: 40,
                                child: Center(
                                  child: Text('Показать статус',
                                  style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500))
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(162, 183, 213, 1)
                                )
                              )
                            ],
                          )),
                        )))
              ],
            )));
  }
}
