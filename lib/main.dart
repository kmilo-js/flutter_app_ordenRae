import 'package:flutter/material.dart';
import 'src/login/login_page.dart';
import 'src/login/register_page.dart';
import 'ejercicios_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orden Rae',
      theme: ThemeData(primarySwatch: Colors.blue),

      // Pantalla inicial
      initialRoute: '/login',

      // Definición de rutas
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/ejercicios': (context) => const EjerciciosPage(),
      },
    );
  }
}
