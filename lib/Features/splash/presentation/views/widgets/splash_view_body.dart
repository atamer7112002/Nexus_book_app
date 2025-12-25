import 'package:flutter/material.dart';
import 'package:nexus_book_app/constants.dart';
import 'package:nexus_book_app/core/utils/assets/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Image.asset(AssetsData.kLogo, fit: BoxFit.contain),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Text(
                'Reed free books',
                style: TextStyle(color: kSecondColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
