import 'package:flutter/material.dart';

import 'pages/onboarding.dart';
import 'widgets/app_styles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppStyles.primaryColor),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
