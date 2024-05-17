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
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeSectionChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeSectionChart()),
              Expanded(child: IncomeSectionDetails()),
            ],
          );
  }
}
