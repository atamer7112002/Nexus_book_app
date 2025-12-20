import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexus_book_app/Features/splash/presentation/views/splash_view.dart';
import 'package:nexus_book_app/constants.dart';

void main() {
  runApp(const NexusBookApp());
}

class NexusBookApp extends StatelessWidget {
  const NexusBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
    );
  }
}
