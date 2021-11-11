import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget _generateRadial() {
  return Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: RadialGradient(
        colors: [
          Color(0x9EDE5600),
          Color(0xFF000000),
        ],
      ),
    ),
  );
}

Widget _generateItem() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Positioned(top: 95, left: 170, child: _generateRadial()),
        Positioned(bottom: 80, right: -30, child: _generateRadial()),
        Positioned(
          bottom: 150,
          right: 5,
          child: Container(
            width: 200,
            height: 460,
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70.0),
                child: Image(
                  image: AssetImage('assets/images/rick.jpg'),
                  width: 228.0,
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
              width: 190,
              height: 450,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        Positioned(
          top: 90,
          left: -10,
          child: Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xFF4C4747),
                  Color(0xFF232328),
                ],
              ),
            ),
            child: Column(children: [
              Text(
                '28',
                style: TextStyle(
                  fontFamily: '',
                  // а у текста появился виджет, который его стилизует
                  color: Color(0xFFFFFFFF),
                  // задаем ему цвет текста
                  fontSize: 100.0, // и размер шрифта
                ),
              ),
              Text(
                'окт 21:00',
                style: TextStyle(
                  fontFamily: '',
                  // а у текста появился виджет, который его стилизует
                  color: Color(0xFFFFFFFF),
                  // задаем ему цвет текста
                  fontSize: 20.0, // и размер шрифта
                ),
              ),
            ]),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 10,
          child: Container(
            height: 120,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'участвует',
                    style: TextStyle(
                      fontFamily: '',
                      // а у текста появился виджет, который его стилизует
                      color: Color(0xFFB39384),
                      // задаем ему цвет текста
                      fontSize: 15.0, // и размер шрифта
                    ),
                  ),
                  Text(
                    'Рик Эстли',
                    style: TextStyle(
                      fontFamily: '',
                      // а у текста появился виджет, который его стилизует
                      color: Color(0xFFC98F7C),
                      // задаем ему цвет текста
                      fontSize: 20.0, // и размер шрифта
                    ),
                  ),
                  Text(
                    'концерт'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: '',
                      // а у текста появился виджет, который его стилизует
                      color: Color(0xFFE24A19),
                      // задаем ему цвет текста
                      fontSize: 40.0, // и размер шрифта
                    ),
                  ),
                ]),
          ),
        ),
      ],
    ),
  );
}

main() => runApp(
      MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF000000)),
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _generateItem(),
    );
  }
}
