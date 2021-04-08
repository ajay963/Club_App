// main.dart
import 'package:club_app/components/themes.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightThemeData(context),
      title: 'Login',
      home: LoginScreen(),
    );
  }
}
