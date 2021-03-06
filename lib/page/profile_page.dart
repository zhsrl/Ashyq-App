

import 'package:ashyq_app/page/result_page.dart';
import 'package:ashyq_app/page/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatelessWidget {
  TextEditingController iinController = TextEditingController();
  TextEditingController placeController = TextEditingController();

  late var iinValue;
  late var placeValue;



  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Stack(
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
        SafeArea(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 80),
              child: Container(
                  width: 380,
                  height: 170,
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
                        Text('ИИН',
                            style: TextStyle(
                                color: Color.fromRGBO(170, 183, 228, 1),
                                fontSize: 20,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500)),
                        Container(
                            child: TextField(
                          controller: iinController,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 21.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          decoration:const InputDecoration(
                            border: InputBorder.none,
                          
                            hintStyle: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 21.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                            hintText: 'Ваш ИИН',
                          ),
                        )),
                        GestureDetector(
                          onTap: () async {
                            SharedPreferences pref = await SharedPreferences.getInstance(); 
                          
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'Your IIN Code - ${iinController.text}')));

                            iinValue = pref.setString(SharedPreferencesKeys.iinValue, iinController.text.toString()) as String;

                            
                          },
                          child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              width: 180,
                              height: 40,
                              child: Center(
                                  child: Text('Coхранить',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500))),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(37, 101, 230, 1))),
                        ),
                      ],
                    )),
                  )),
            ),
            Container(
                color: Color.fromRGBO(163, 183, 217, 1),
                height: 0.6,
                width: 500,
                margin: EdgeInsets.only(top: 30)),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 30.0, bottom: 20.0),
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            blurRadius: 10.0)
                      ]),
                  child: TextField(
                    controller: placeController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      hintText: 'Название здания',
                    ),
                  )),
            ),

            GestureDetector(
              onTap: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
                  'PLACE - ${placeController.text}'
                )));

                placeValue = pref.setString(SharedPreferencesKeys.placeValue, placeController.text.toString()) as String;
                
              },
              child:  Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 180,
                height: 40,
                child: Center(
                    child: Text('Coхранить',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500))),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(37, 101, 230, 1))),
            ),
           
            GestureDetector(
              onLongPress: () {
                
                

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Ваш ИИН - ${iinController.text}')));
              },
              onTap: () async {
                SharedPreferences pref = await SharedPreferences.getInstance(); 
                
                
                iinValue = pref.getString('iinData') ?? "NULL";
                placeValue = pref.getString('placeData') ?? "NULL";

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('ИИН - $iinValue - ЗДАНИЕ - $placeValue')));

                iinController.text = iinValue;
                placeController.text = placeValue;

              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 180,
                height: 40,
                child: Center(
                    child: Text('Последние данные',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500))),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green))
            )
            
            
          ],
        )),
      ],
    ));
  }

}
