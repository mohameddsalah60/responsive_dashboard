import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
  });
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      margin: const EdgeInsets.only(top: 40),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      child: child,
    );
  }
}
