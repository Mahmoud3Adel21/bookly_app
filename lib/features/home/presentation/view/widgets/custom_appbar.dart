import 'package:bookly_app/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(AssetsData.logo,height: 20,),
          const Spacer(),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}