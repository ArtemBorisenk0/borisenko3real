import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Борисенко приложение',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Борисенко приложение'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  Color? buttonColor; // Добавляем переменную для хранения цвета кнопки

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Борисенко приложение'),
        backgroundColor: buttonColor ?? Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonColor = Colors.blue; // Задаем цвет кнопки
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetScreen('Синий', buttonColor)),
                );
              },
              child: Text('Синий'),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonColor = Colors.green; // Задаем цвет кнопки
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetScreen('Зелёный', buttonColor)),
                );
              },
              child: Text('Зелёный'),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonColor = Colors.yellow; // Задаем цвет кнопки
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetScreen('Желтый', buttonColor)),
                );
              },
              child: Text('Желтый'),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonColor = Colors.red; // Задаем цвет кнопки
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetScreen('Красный', buttonColor)),
                );
              },
              child: Text('Красный'),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonColor = Color.fromARGB(100, 16, 101, 145); // Задаем цвет кнопки
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetScreen('Цвет мокрого слона', buttonColor)),
                );
              },
              child: Text('Цвет мокрого слона'),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetScreen extends StatelessWidget {
  final String widgetName;
  final Color? backgroundColor;

  WidgetScreen(this.widgetName, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widgetName),
      ),
      backgroundColor: backgroundColor, // Используем переданный цвет
      body: Center(
        child: Text('Как вам $widgetName ?'),
      ),
    );
  }
}