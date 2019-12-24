import 'package:flutter/material.dart';
import './app/pages/home/home_page.dart';
import './app/shared/utils/colors_utils.dart';

void main() => runApp(MyApp());

TextTheme buildTextTheme() {
  return TextTheme(
    title: TextStyle(),
    body1: TextStyle(
      fontFamily: 'Quicksand',
    ),
  );
}

ThemeData buildDarkThemeData() {
  final baseTheme = ThemeData.dark();

  return baseTheme.copyWith(
    // https://colorhunt.co/palette/43636
    primaryColor: ColorUtils.hexToColor('#ff7844'),
    textTheme: buildTextTheme(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildDarkThemeData(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomePage(),
      },
    );
  }
}
