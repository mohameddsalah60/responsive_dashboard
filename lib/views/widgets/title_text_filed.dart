import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_text_filed.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.hintText, required this.title});
  final String hintText, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFiled(hintText: hintText),
      ],
    );
  }
}
