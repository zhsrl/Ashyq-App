import 'package:flutter/material.dart';

void main() => runApp(ResultPage());

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
                alignment: Alignment.topCenter,
                width: 600,
                height: 260,
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
            SafeArea(
                child: Column(
              children: <Widget>[
                Center(
                    child: Image.asset('assets/logo_main.png',
                        width: 110, height: 80)),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('+77767765262',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  color: Colors.white)),
                          SizedBox(height: 20),
                          Text('Номер телефона',
                              style: TextStyle(
                                color: Color.fromRGBO(151, 162, 184, 1),
                                fontFamily: 'SF Pro Display',
                              ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('010222550444',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  color: Colors.white)),
                          SizedBox(height: 20),
                          Text('ИИН',
                              style: TextStyle(
                                color: Color.fromRGBO(151, 162, 184, 1),
                                fontFamily: 'SF Pro Display',
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                      width: 360,
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 10.0,
                                color: Color.fromRGBO(0, 0, 0, 0.1))
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Center(
                            child: Column(
                           children: <Widget>[
                            Text('Вход'.toUpperCase(),
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 24, 163, 1),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600)),
                            Container(
                                child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 21.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                                hintText: 'Place Title',
                              ),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 120,

                                  child: Column(
                                    
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('БИН/ИИН',
                                          style: TextStyle(
                                              fontFamily: 'SF Pro Display',
                                              color: Color.fromRGBO(
                                                  151, 162, 184, 1))),
                                      SizedBox(height: 10),
                                      Text('Номер телефона',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'SF Pro Display',
                                          ))
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    color: Color.fromRGBO(163, 183, 217, 1),
                                    width: 0.6,
                                    height: 70.0,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Номер входа',
                                        style: TextStyle(
                                            fontFamily: 'SF Pro Display',
                                            color: Color.fromRGBO(
                                                151, 162, 184, 1))),
                                    SizedBox(height: 10),
                                    Text('PLACE TITLE',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'SF Pro Display',
                                        ))
                                  ],
                                )
                              ],
                            ),
                            Container(
                              color: Color.fromRGBO(163, 183, 217, 1),
                              height: 0.6,
                              width: 360.0,
                            ),

                            Text('Статус', style: TextStyle(
                              color: Color.fromRGBO(113, 160, 193, 1)
                            ))
                          ],
                        )),
                      )),
                ),
              ],
            )),
          ],
        ));
  }
}
