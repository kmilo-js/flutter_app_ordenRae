import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP Entregas',
      initialRoute: 'login',
      routes: {'login': (BuildContext context) => LoginPage()},
    );
  }
}
