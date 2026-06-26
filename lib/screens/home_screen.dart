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
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 70,
                // AQUÍ PEGA TU LINK ENTRE LAS COMILLAS
                backgroundImage: NetworkImage(
                  'https://i.postimg.cc/VNTWr8q1/Whats-App-Image-2026-06-25-at-10-14-32-PM.jpg',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'José Julián Gómez Salazar',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Estudiante de Ingeniería de Sistemas',
              style: TextStyle(fontSize: 18, color: Colors.blueGrey),
            ),
            const Divider(height: 40, thickness: 1),

            // SECCIÓN: SOBRE MÍ
            _buildSectionTitle('Mi Objetivo'),
            const Text(
              'Actualmente curso la carrera de Ingeniería de Sistemas con la firme meta de graduarme y convertirme en un profesional capaz de aportar soluciones innovadoras al mundo tecnológico.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 25),

            // SECCIÓN: HOBBIES
            _buildSectionTitle('Hobbies & Gaming'),
            const Text(
              'Apasionado por el mundo gaming competitivo. Disfruto de la estrategia y el trabajo en equipo en títulos como Overwatch y Dota 2, donde siempre busco mejorar mis habilidades y jugar con mis amigos .',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blueGrey.withOpacity(0.3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.monitor_heart, color: Colors.green),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Estado: Compilando proyectos y mejorando en Overwatch & Dota 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
