// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookly_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontsize,
  }) : super(key: key);
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: fontsize
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
