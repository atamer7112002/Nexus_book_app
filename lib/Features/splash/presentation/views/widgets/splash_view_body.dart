import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexus_book_app/Features/home/presentation/views/home_view.dart';
import 'package:nexus_book_app/Features/splash/presentation/views/widgets/slided_text.dart';
import 'package:nexus_book_app/constants.dart';
import 'package:nexus_book_app/core/utils/assets/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.asset(AssetsData.kLogo, fit: BoxFit.contain),
            ),
            const SizedBox(height: 4),
            SlidedText(slidingAnimation: slidingAnimation),
          ],
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }
}

void navigateToHome() {
  Future.delayed(kTrantitionDuration, () {
    Get.to(() => const HomeView(), transition: Transition.fadeIn);
  });
}
