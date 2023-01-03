import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'featuredbook_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(height: 30),
          Text('Best Seller', style: Styles.titleMedium),
        ],
      ),
    );
  }
}
