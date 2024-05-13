import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'range_opital.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xffF1F1F1), width: 1),
                borderRadius: BorderRadius.circular(12),
              )),
          child: const RangeOpital(),
        ),
      ],
    );
  }
}
