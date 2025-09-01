import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/login/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Imagen de logo
              Image.asset('assets/Logo2_ordenRae.png', height: 150),
              const SizedBox(height: 40),
              //Campos de Email
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 20),
              // Campo de Contraseña
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 20),
              // Botón de Login
              ElevatedButton(
                onPressed: () {
                  // Lógica de Login
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Login exitoso')),
                  );
                },
                child: const Text('Entrar'),
              ),
              const SizedBox(height: 10),
              // Botón para ir a Registro
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );  
                },
                child: const Text('¿No tienes cuenta? Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
