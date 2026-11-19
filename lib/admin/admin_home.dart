import 'package:flutter/material.dart';

import '../widgets/app_styles.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppStyles.primaryColor,
        foregroundColor: Colors.white,
        title: const Text('Administración de Trivias'),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'Cerrar sesión',
            icon: const Icon(Icons.logout_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gestión de Contenido',
              style: AppStyles.headlineStyle().copyWith(fontSize: 22),
            ),
            const SizedBox(height: 8),
            Text(
              'Selecciona una acción para administrar el banco de trivias.',
              style: AppStyles.subheadlineStyle(),
            ),
            const SizedBox(height: 28),

            // Tarjeta 1: Agregar Pregunta
            _buildAdminActionCard(
              context: context,
              title: 'Agregar Nueva Pregunta',
              subtitle:
                  'Crea preguntas con 4 opciones y marca la respuesta correcta',
              icon: Icons.add_circle_outline_rounded,
              color: const Color(0xFF1E88E5),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Próximo paso: Formulario para agregar preguntas',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),

            // Tarjeta 2: Gestionar Categorías
            _buildAdminActionCard(
              context: context,
              title: 'Gestionar Categorías',
              subtitle:
                  'Crea o edita las categorías disponibles para los jugadores',
              icon: Icons.category_rounded,
              color: const Color(0xFF43A047),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Próximo paso: Gestión de categorías en Firestore',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),

            // Tarjeta 3: Ver Estadísticas / Banco de Preguntas
            _buildAdminActionCard(
              context: context,
              title: 'Banco de Preguntas',
              subtitle: 'Consulta o elimina preguntas ya publicadas en la base de datos',
              icon: Icons.list_alt_rounded,
              color: const Color(0xFFFB8C00),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Próximo paso: Listado desde Cloud Firestore',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdminActionCard({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icon, size: 34, color: color),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppStyles.cardTitleStyle()),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
