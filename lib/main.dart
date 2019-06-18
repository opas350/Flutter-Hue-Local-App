import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hue_clone/pages/home_page.dart';

// Needed to run the app
void main(){
  runApp(MyApp());
}

// Main app - should be as simple
class MyApp extends StatelessWidget{
  final ThemeData _theme = _buildTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hue Clone',
      home: HomePage(),
      theme: _theme,
    );
  }
}

// Theme to use on the app
ThemeData _buildTheme(){
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Colors.red,
    primaryColorBrightness: Brightness.light,
    primaryTextTheme: Typography.blackMountainView,
    primaryIconTheme: const IconThemeData(
      color: Colors.grey
    ),
    accentColor: Colors.green[800],
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: Colors.green[800],
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
      )
    ),
    scaffoldBackgroundColor: Colors.white
  );
}