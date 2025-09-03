import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Logo2_ordenRae.png", height: 200),
            const SizedBox(height: 40),

            // Campo usuario
            TextField(
              decoration: const InputDecoration(
                labelText: "Usuario",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 15),

            // Campo correo
            TextField(
              decoration: const InputDecoration(
                labelText: "Correo",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),

            // Botón registrar
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Registro exitoso")),
                );
              },
              child: const Text("Registrarse"),
            ),

            const SizedBox(height: 10),

            // Volver al login
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("¿Ya tienes cuenta? Inicia sesión"),
            ),
          ],
        ),
      ),
    );
  }
}