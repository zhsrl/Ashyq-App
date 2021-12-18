import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Инфо',
          style: TextStyle(color: Colors.black,),
        ),
        backgroundColor: Colors.white,
      ),

      body:const WebView(
        initialUrl: 'https://ashyq.kz/baza'
      ),
    );
  }
}
