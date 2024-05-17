import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeSectionChart extends StatefulWidget {
  const DetailedIncomeSectionChart({super.key});

  @override
  State<DetailedIncomeSectionChart> createState() =>
      _DetailedIncomeSectionChart();
}

class _DetailedIncomeSectionChart extends State<DetailedIncomeSectionChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
            title: activeIndex == 0 ? 'Design service' : '40%',
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            radius: activeIndex == 0 ? 40 : 30,
            color: const Color(0xff208CC8),
            titleStyle: AppStyles.styleRegular16(context).copyWith(
              color: activeIndex == 0 ? null : const Color(0xFFFFFFFF),
            ),
            value: 40),
        PieChartSectionData(
            title: activeIndex == 1 ? 'Design product' : '25%',
            titlePositionPercentageOffset: activeIndex == 1 ? 2.1 : null,
            radius: activeIndex == 1 ? 40 : 30,
            color: const Color(0xff4EB7F2),
            titleStyle: AppStyles.styleRegular16(context).copyWith(
              color: activeIndex == 1 ? null : const Color(0xFFFFFFFF),
            ),
            value: 25),
        PieChartSectionData(
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
            radius: activeIndex == 2 ? 40 : 30,
            color: const Color(0xff064061),
            titleStyle: AppStyles.styleRegular16(context).copyWith(
              color: activeIndex == 2 ? null : const Color(0xFFFFFFFF),
            ),
            value: 20),
        PieChartSectionData(
            title: activeIndex == 3 ? 'Other' : '22%',
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            radius: activeIndex == 3 ? 40 : 30,
            color: const Color(0xffE2DECD),
            titleStyle: AppStyles.styleRegular16(context).copyWith(
              color: activeIndex == 3 ? null : const Color(0xFFFFFFFF),
            ),
            value: 22),
      ],
    );
  }
}
