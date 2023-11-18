import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double hight;
  final VoidCallback? onPressed;
  const CustomTextButton({
    super.key,
    required this.title,
    this.hight = 50,
    this.width = double.infinity,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: hight,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 11,
            fontWeight: black,
          ),
        ),
      ),
    );
  }
}
