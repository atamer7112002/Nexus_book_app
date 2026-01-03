import 'package:flutter/material.dart';
import 'package:nexus_book_app/core/utils/assets/assets.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 15),
      child: Row(
        children: [
          Image.asset(AssetsData.kLogo, height: 35),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 30),
          ),
        ],
      ),
    );
  }
}
