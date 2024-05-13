import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOpital extends StatelessWidget {
  const RangeOpital({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Monthly',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(width: 18),
        Transform.rotate(
          angle: -1.57079633,
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
