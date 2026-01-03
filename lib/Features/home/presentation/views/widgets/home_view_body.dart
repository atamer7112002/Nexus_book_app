import 'package:flutter/material.dart';
import 'package:nexus_book_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:nexus_book_app/Features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Customappbar(), FeaturedListView()]);
  }
}
