import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _navigateToSecondScreen(context, Colors.red);
              },
              child: Text('Красная'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateToSecondScreen(context, Colors.yellow);
              },
              child: Text('Желтая'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateToSecondScreen(context, Colors.blue);
              },
              child: Text('Синяя'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToSecondScreen(BuildContext context, Color color) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(color: color),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final Color color;

  SecondScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второй экран'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Вернуться'),
          ),
        ),
      ),
    );
  }
}
