import 'package:flutter/material.dart';
import 'package:nexus_book_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:nexus_book_app/core/utils/assets/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Customappbar(), CustomListViewItem()]);
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage(AssetsData.kTestImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
