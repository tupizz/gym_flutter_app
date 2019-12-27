import 'package:flutter/material.dart';

import './app/shared/utils/colors_utils.dart';
import './app/pages/tabs/tabs_page.dart';

void main() => runApp(MyApp());

TextTheme buildTextTheme() {
  return TextTheme(
    title: TextStyle(),
    body1: TextStyle(
      fontFamily: 'Quicksand',
    ),
  );
}

// https://colorhunt.co/palette/158462
ThemeData buildDarkThemeData() {
  final baseTheme = ThemeData.light();

  return baseTheme.copyWith(
      primaryColor: ColorUtils.hexToColor('#fa163f'),
      primaryColorDark: ColorUtils.hexToColor('#ff4d00'),
      textTheme: buildTextTheme(),
      scaffoldBackgroundColor: ColorUtils.hexToColor('#fafafa'));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildDarkThemeData(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabPage(),
      },
    );
  }
}
