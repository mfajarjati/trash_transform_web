import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBlue = Color(0xFF2196F3);
  static const Color darkBlue = Color(0xFF1565C0);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color textDark = Color(0xFF333333);
}

class AppStyles {
  static const TextStyle headerStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 16,
    color: AppColors.textDark,
  );
}
