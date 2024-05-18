import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

import 'detailed_income_section_chart.dart';
import 'income_section_chart.dart';
import 'income_section_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width <= 390) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: DetailedIncomeSectionChart(),
      );
    } else if (width >= SizeConfig.desktop && width <= 1620) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: DetailedIncomeSectionChart(),
      );
    } else {
      return const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: IncomeSectionChart()),
          Expanded(flex: 2, child: IncomeSectionDetails()),
        ],
      );
    }
  }
}
