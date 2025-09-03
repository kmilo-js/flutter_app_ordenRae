import 'package:flutter/material.dart';

class EjerciciosPage extends StatelessWidget {
  const EjerciciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejercicios Prácticos - Nivel Básico")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 1. Mostrar nombre y botón "Saludar"
          _buildEjercicio(
            "1. Nombre y botón Saludar",
            Column(
              children: [
                const Text("Mi nombre es Camilo Piñeros😎"),
                ElevatedButton(
                  onPressed: () => debugPrint("¡Hola, Camilo Piñeros!"),
                  child: const Text("Saludar"),
                ),
              ],
            ),
          ),

          // 2. Row con icono de teléfono y número
          _buildEjercicio(
            "2. Teléfono en Row",
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 8),
                Text("+57 3166712520"),
              ],
            ),
          ),

          // 3. Column con título y descripción
          _buildEjercicio(
            "3. Column con título y descripción",
            Column(
              children: const [
                Text("El pais de las maravillas", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("“Alicia en el País de las Maravillas” es una novela de Lewis Carroll que cuenta la historia de una niña llamada Alicia que, tras seguir a un conejo blanco, cae por un agujero y llega a un mundo surrealista lleno de personajes extraños y situaciones absurdas. A lo largo de su aventura, Alicia se encuentra con criaturas como el Gato Cheshire, la Reina de Corazones, y el Sombrero Loco, mientras cuestiona su identidad y lucha por encontrar un sentido en un mundo que desafía toda lógica."),
              ],
            ),
          ),

          // 4. Container con fondo y medidas
          _buildEjercicio(
            "4. Container con color",
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ),

          // 5. Center con Container
          _buildEjercicio(
            "5. Center con Container",
            Center(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),
          ),

          // 6. Padding en un texto
          _buildEjercicio(
            "6. Padding en texto",
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text("Ser un bien desarrollor de software implica práctica."),
            ),
          ),

          // 7. ListView con lista de compras
          _buildEjercicio(
            "7. Lista de compras",
            SizedBox(
              height: 200,
              child: ListView(
                children: const [
                  ListTile(title: Text("🍎 Manzanas")),
                  ListTile(title: Text("🍞 Pan")),
                  ListTile(title: Text("🥛 Leche")),
                  ListTile(title: Text("🥚 Huevos")),
                  ListTile(title: Text("🧀 Queso")),
                ],
              ),
            ),
          ),

          // 8. Imagen de internet
          _buildEjercicio(
            "8. Imagen de internet",
            Image.network(
              "https://images5.alphacoders.com/663/thumb-1920-663098.jpg",
              height: 100,
            ),
          ),

          // 9. Scaffold con AppBar real
          _buildEjercicio(
            "9. Scaffold con AppBar",
            SizedBox(
            height: 200, // Ajusta altura para mostrar dentro de la lista de ejercicios
            child: Scaffold(
              appBar: AppBar(
                title: const Text("AppBar de ejemplo"),
                centerTitle: true,
                backgroundColor: Colors.blue,
              ),
            body: const Center(
              child: Text("DeadPool"),
              ),
            ),
          ),
      ),

          // 10. ElevatedButton que imprime en consola
          _buildEjercicio(
            "10. Botón que imprime en consola",
            ElevatedButton(
              onPressed: () => debugPrint("¡Botón presionado!"),
              child: const Text("Presionar"),
            ),
          ),
        ],
      ),
    ); 
  }

  // Helper para cada ejercicio
  Widget _buildEjercicio(String titulo, Widget contenido) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titulo,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            contenido,
          ],
        ),
      ),
    );
  }
}