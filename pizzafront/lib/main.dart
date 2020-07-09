import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/login_screen.dart';
import 'src/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        theme: ThemeData(
          primaryColor: const Color(0xFF8CE7F1),
          accentColor: const Color(0xFF8CE7F1),
          colorScheme: ColorScheme.light(primary: const Color(0xFF8CE7F1)),
          buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
        ),
        home: Wrapper());
  }
}

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  Future<String> _checkLogin() async {
    final SharedPreferences prefs = await _prefs;
    final String user = prefs.getString('user');
  }

  String user='';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: _checkLogin(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          user = snapshot.data;

        } else {
          print("No data");
        }
        return user.length > 0 ? home() : Login();
      },
    );
  }
}