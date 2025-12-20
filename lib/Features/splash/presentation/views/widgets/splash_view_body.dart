import 'package:flutter/material.dart';
import 'package:nexus_book_app/core/utils/assets/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.width * 0.6,
          child: Image.asset(AssetsData.kLogo, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
