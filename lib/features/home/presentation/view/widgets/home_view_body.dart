import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'bestseller_listview.dart';
import 'custom_appbar.dart';
import 'featuredbook_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBookListView(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        const SliverFillRemaining(
          //like expanded
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
