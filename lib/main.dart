import 'package:flutter/material.dart';
import 'package:gym_app/app/pages/splash-screen/splash_screen_page.dart';

import './app/shared/utils/colors_utils.dart';
import './app/pages/tabs/tabs_page.dart';
import './app/pages/workout-detail/workout_detail_page.dart';

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
      accentColor: ColorUtils.hexToColor('#f8b400'),
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
        '/': (ctx) => SplashScreenPage(),
        '/tabs': (ctx) => TabPage(),
        WorkoutDetailPage.routeName: (ctx) => WorkoutDetailPage(),
      },
    );
  }
}
