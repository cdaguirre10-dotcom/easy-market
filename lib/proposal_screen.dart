import 'package:flutter/material.dart';

void main() {
  runApp(const EasyMarketApp());
}

class EasyMarketApp extends StatelessWidget {
  const EasyMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ProposalScreen(),
    );
  }
}

class ProposalScreen extends StatelessWidget {
  const ProposalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: const Text(
          'Easy Market - Descripción de la Propuesta',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Eslogan o Encabezado
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '🌱 Buenos precios, menos desperdicio, un planeta mejor',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E7D32),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Conectamos comercios locales con consumidores para comercializar productos con descuentos por vencimiento próximo, excedentes y baja rotación.',
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Título de Sección
            const Text(
              '¿Qué son las Bolsas Sorpresa?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B5E20),
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              'Son paquetes cuyo contenido exacto puede variar dentro de categorías previamente indicadas. El comprador conoce la categoría, cantidad aproximada, alérgenos y horario de retiro antes de reservar.',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 20),

            // Categorías de productos (Tarjetas)
            const Text(
              'Categorías Disponibles',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B5E20),
              ),
            ),
            const SizedBox(height: 10),

            _buildCategoryCard(
              title: 'Panadería y Pastelería',
              description: 'Elaboraciones recientes dentro de condiciones seguras de venta.',
              icon: Icons.bakery_dining,
            ),
            _buildCategoryCard(
              title: 'Frutas y Verduras',
              description: 'Productos maduros pero en óptimo estado para consumo inmediato.',
              icon: Icons.eco,
            ),
            _buildCategoryCard(
              title: 'Alimentos Envasados',
              description: 'Próximos a su vencimiento, dentro del período legal de comercialización.',
              icon: Icons.shopping_basket,
            ),
            _buildCategoryCard(
              title: 'Excedentes de Inventario',
              description: 'Artículos de baja rotación que mantienen su calidad y aptitud.',
              icon: Icons.inventory_2,
            ),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para crear las tarjetas con tonos verdes y blancos
  Widget _buildCategoryCard({required String title, required String description, required IconData icon}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green.shade100),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.green.shade800),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E7D32),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 13, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
