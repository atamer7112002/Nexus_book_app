import 'package:flutter/material.dart';
import 'package:nexus_book_app/constants.dart';

class SlidedText extends StatelessWidget {
  const SlidedText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) => SlideTransition(
        position: slidingAnimation,
        child: const Text(
          'Read free books',
          textAlign: TextAlign.center,
          style: TextStyle(color: kSecondColor, fontSize: 18),
        ),
      ),
    );
  }
}
