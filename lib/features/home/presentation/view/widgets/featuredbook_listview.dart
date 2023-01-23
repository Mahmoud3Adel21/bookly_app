import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: CustomBookImage(),
            );
          })),
    );
  }
}
