import 'dart:ui';

import 'package:ashyq_app/main.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class AboutPage extends StatelessWidget {
  var logoAsset = 'assets/logoashyq.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'О приложении',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    logoAsset,
                    width: 160,
                    height: 160,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    width: 310,
                    child: Text(
                      'Ashyq - дополнительные меры предосторожности в борьбе с COVID-19',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Приложение "Ashyq" - дает возможность бизнесу\n продолжать свою деятельность в период\n карантинных мер. Для входа в общественные места\n гражданин сканирует посредством "Ashyq"\n специальный QR-код и предъявляет на входе рейтинг\n риска, указанный в приложении',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.1,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    )),
                Text(
                  'Тех. поддержка',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1.1,
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    'Для граждан',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.1,
                      color: Color.fromRGBO(163, 183, 217, 1),
                      fontSize: 13,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/call.png', width: 25, height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        '1414',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    'Для бизнеса',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.1,
                      color: Color.fromRGBO(163, 183, 217, 1),
                      fontSize: 13,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/call.png', width: 25, height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        '1432',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    'Телеграм канал',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.1,
                      color: Color.fromRGBO(163, 183, 217, 1),
                      fontSize: 13,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/telegram.png', width: 25, height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'ashyq_support_bot',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        'Разработчик:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.1,
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Image.asset('assets/logodev.png',
                          width: 250, height: 250),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
