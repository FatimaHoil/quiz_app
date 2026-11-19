import 'package:flutter/material.dart';

class AppStyles {
  static const Color primaryColor = Color(0xFF004B8D);
  static const Color secondaryColor = Color(0xFF0077CC);
  static const Color backgroundColor = Color(0xFFF5F7FA);

  static TextStyle headlineStyle() {
    return const TextStyle(
      color: Colors.black87,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle subheadlineStyle() {
    return const TextStyle(
      color: Colors.black54,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle cardTitleStyle() {
    return const TextStyle(
      color: Colors.black87,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );
  }
}
