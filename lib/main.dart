import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexus_book_app/Features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const NexusBookApp());
}

class NexusBookApp extends StatelessWidget {
  const NexusBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: SplashView());
  }
}
