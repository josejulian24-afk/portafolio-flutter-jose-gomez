import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Portafolio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.badge),
            onPressed: () => Navigator.pushNamed(context, '/contact'),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'), 
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'José Julián Gómez Salazar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
              child: Text(
                'Estudiante de Ingeniería de Sistemas',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const Divider(height: 40, thickness: 1.5),

            const Text('¿Qué hago?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              'Desarrollo software utilizando lenguajes y frameworks como Java, Flutter, Dart y bases de datos SQL. Además, me dedico al diseño y simulación de circuitos eléctricos y sistemas electrónicos usando software como Proteus.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),

            const Text('Hobbies', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              'Tengo un fuerte interés técnico en el armado y optimización de hardware de PC, enfocado en componentes como procesadores AMD Ryzen y tarjetas NVIDIA RTX. En mi tiempo libre, participo en videojuegos multijugador y competitivos como Overwatch, World of Warcraft y la serie EA Sports FC.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 15),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network('https://cdn-icons-png.flaticon.com/512/2005/2005085.png', width: 60, height: 60),
                Image.network('https://cdn-icons-png.flaticon.com/512/860/860113.png', width: 60, height: 60),
              ],
            ),
            const Divider(height: 40, thickness: 1.5),

            const Center(
              child: Text(
                'Desarrollado en Flutter - 2026',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}