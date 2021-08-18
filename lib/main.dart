import 'package:flutter/material.dart';
import 'package:learning_app/pages/home_page.dart';
import 'package:learning_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LogIn(),
        "/home": (context) => HomePage(),
        "/login": (context) => LogIn()
      },
    );
  }
}
