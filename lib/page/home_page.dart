import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var logoAsset = 'assets/logo_main.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
              width: 500,
              height: 220,
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
                        decoration: BoxDecoration(color: Color.fromRGBO(0, 60, 149, 1),
                        borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('Инструкция для регистрации входа',
                        style: TextStyle(fontSize: 12, color: Colors.white))
                        )
                      )
                    ],
                  )))
        ],
      ),
      Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 16, top: 24, bottom: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Для пользователей',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open Sans')))),
            Container(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
                width: 360,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(231, 232, 237, 1),
                ),
                child: 
                
                Row(
                  children: [
                    
                    Text('Регистрация входа',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600)),
                    Container(
                      width: 130,
                      height: 130,
                      alignment: Alignment.bottomRight,
                      child: Image.network(
                          'https://cdn.pixabay.com/photo/2013/07/13/10/08/code-156629_1280.png'),
                    )
                  ],
                ))
          ],
        ),
      )
    ]));
  }
}
