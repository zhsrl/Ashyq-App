import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          elevation: 10,
          notchMargin: 8,
          clipBehavior: Clip.antiAlias,
          child: Container(
            child: BottomNavigationBar(
              elevation: 0,
              items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info')
            ],),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}