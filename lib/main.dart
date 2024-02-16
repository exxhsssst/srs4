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
        child: ElevatedButton(
          onPressed: () {
            _navigateToSecondScreen(context);
          },
          child: Text('Перейти к следующему экрану'),
        ),
      ),
    );
  }

  void _navigateToSecondScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen()),
    );

    // Получите данные из второго экрана и используйте их
    if (result != null) {
      // Делайте что-то с данными
      print(result);
    }
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второй экран'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Вернуть данные на первый экран
            Navigator.pop(context, 'Данные с второго экрана');
          },
          child: Text('Вернуться'),
        ),
      ),
    );
  }
}
