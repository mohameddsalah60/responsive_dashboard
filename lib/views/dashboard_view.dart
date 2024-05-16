import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
