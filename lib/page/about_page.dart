import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  
  var logoAsset = 'assets/logo_ashyq.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          'О приложении',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: -0.5),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        
        children: [
          Center(
            child: Container(
              
              width: 250,
              height: 250,
              child: Image(image: AssetImage(logoAsset),),
            ),
          ),
        

        ],
      ),
    );
  }
}
