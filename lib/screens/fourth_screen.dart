import 'package:flutter/material.dart';
import 'package:alish/screens/fifth_screen.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => FifthPage()));
              },
              child: Text('Push Replacement'),
            ),
          ],
        ),
      ),
    );
  }
}