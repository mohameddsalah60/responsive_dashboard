import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: hintText,
      hintStyle: AppStyles.styleRegular16(context)
          .copyWith(color: const Color(0xffAAAAAA)),
      fillColor: const Color(0xffFAFAFA),
      filled: true,
      border: buildBorder(),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(),
    ));
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xffFAFAFA),
      ),
    );
  }
}
