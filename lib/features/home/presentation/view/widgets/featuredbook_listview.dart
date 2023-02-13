import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:bookly_app/features/home/presentation/view_models/Featured_books_Cubit/features_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/Featured_books_Cubit/features_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBooksCubit, FeaturesBooksState>(
      builder: (context, state) {
        if (state is FeaturesBooksSuccess) {
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
        } else if (state is FeaturesBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
