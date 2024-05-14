import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.color,
    this.colorBtn,
  });
  final String title;
  final Color? color;
  final Color? colorBtn;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: color ?? const Color(0xff4EB7F2),
        ),
        onPressed: () {},
        child: Text(title,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: colorBtn,
            )));
  }
}
