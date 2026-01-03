import 'package:flutter/material.dart';
import 'package:nexus_book_app/core/utils/assets/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const Customappbar()]);
  }
}

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.kLogo, height: 35),
          const Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30)),
        ],
      ),
    );
  }
}
