import 'package:ashyq_app/page/about_page.dart';
import 'package:ashyq_app/page/home_page.dart';
import 'package:ashyq_app/page/info_page.dart';
import 'package:ashyq_app/page/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage()
    );
  }
  

}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State {
  int currentIndex = 1;

  final screens = [
    InfoPage(),
    HomePage(),
    ProfilePage(),
    AboutPage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Color.fromRGBO(37, 101, 230, 1),
        unselectedItemColor: Color.fromRGBO(151, 162, 184, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.info),
            label: 'Инфо',
             
            backgroundColor: Colors.white   
          ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Главная',
              backgroundColor: Colors.white     
          ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: 'Профиль', 
              backgroundColor: Colors.white  
          ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'О приложении',  
              backgroundColor: Colors.white    
          ),
        ],
      ),
          
    );
  }
}

