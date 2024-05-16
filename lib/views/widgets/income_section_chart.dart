import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeSectionChart extends StatefulWidget {
  const IncomeSectionChart({super.key});

  @override
  State<IncomeSectionChart> createState() => _IncomeSectionChartState();
}

class _IncomeSectionChartState extends State<IncomeSectionChart> {
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
          value: 40,
          radius: activeIndex == 0 ? 30 : 20,
          showTitle: false,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 30 : 20,
          showTitle: false,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 30 : 20,
          color: const Color(0xff064061),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          radius: activeIndex == 3 ? 30 : 20,
          color: const Color(0xffE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
