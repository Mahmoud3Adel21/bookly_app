import 'package:flutter/material.dart';

import 'section_books_details.dart';
import 'custom_appbar.dart';
import 'section_similar_books.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: const [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 20)),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
