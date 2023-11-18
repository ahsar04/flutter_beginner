import 'package:geeta/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final String text;
  final Icon iconField;
  final bool obscureText;
  final bool readOnly;
  final TextEditingController? controller;

  const CustomFormField({
    Key? key,
    required this.title,
    required this.text,
    required this.iconField,
    this.obscureText = false,
    this.readOnly = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: black, fontSize: 14),
        ),
        const SizedBox(
          height: 11,
        ),
        TextFormField(
          readOnly: readOnly,
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            hintText: text,
            prefixIcon: iconField,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          ),
        )
      ],
    );
  }
}
