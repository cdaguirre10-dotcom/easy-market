import 'package:flutter/material.dart';

class PricesScreen extends StatelessWidget {
  const PricesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: const Text(
          'Easy Market - Precios y Comisiones',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Estructura de Bolsas Sorpresa',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B5E20),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Valores de venta al público y comisión de la plataforma (15%) orientados a la optimización de excedentes[span_2](start_span)[span_2](end_span).',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 16),

          // Tarjetas de precios por categoría basada en el plan de negocios
          _buildPriceCard(
            category: 'Almacén',
            details: 'Abarrotes envasados, conservas, fideos, aceites y legumbres[span_3](start_span)[span_3](end_span).',
            price: '\$8.000 ARS',
            commission: 'Comisión: \$1.200 ARS[span_4](start_span)[span_4](end_span)',
          ),
          _buildPriceCard(
            category: 'Carnes',
            details: 'Cortes vacunos, porcinos o avícolas con fecha límite del día[span_5](start_span)[span_5](end_span).',
            price: '\$14.000 ARS',
            commission: 'Comisión: \$2.100 ARS[span_6](start_span)[span_6](end_span)',
          ),
          _buildPriceCard(
            category: 'Vegetales y Frutas',
            details: 'Frutas y verduras maduras, en buen estado para consumo[span_7](start_span)[span_7](end_span).',
            price: '\$8.000 ARS',
            commission: 'Comisión: \$1.200 ARS[span_8](start_span)[span_8](end_span)',
          ),
          _buildPriceCard(
            category: 'Fiambres / Quesos',
            details: 'Embutidos y quesos fraccionados de alta rotación[span_9](start_span)[span_9](end_span).',
            price: '\$12.000 ARS',
            commission: 'Comisión: \$1.800 ARS[span_10](start_span)[span_10](end_span)',
          ),
          _buildPriceCard(
            category: 'Panificados',
            details: 'Pan, facturas y productos de pastelería elaborados en el día[span_11](start_span)[span_11](end_span).',
            price: '\$10.000 ARS',
            commission: 'Comisión: \$1.500 ARS[span_12](start_span)[span_12](end_span)',
          ),
          _buildPriceCard(
            category: 'Lácteos',
            details: 'Leches, yogures, cremas y postres frescos próximos a vencer[span_13](start_span)[span_13](end_span).',
            price: '\$9.000 ARS',
            commission: 'Comisión: \$1.350 ARS[span_14](start_span)[span_14](end_span)',
          ),
        ],
      ),
    );
  }

  Widget _buildPriceCard({
    required String category,
    required String details,
    required String price,
    required String commission,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E7D32),
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            details,
            style: const TextStyle(fontSize: 13, color: Colors.black54),
          ),
          const Divider(height: 16),
          Text(
            commission,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.green.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
