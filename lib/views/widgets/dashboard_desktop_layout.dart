import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

import 'all_expansess_qnd_quickInvoice.dart';
import 'income_section.dart';
import 'mycards_and_transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 2, child: AllExpansessAndQuickInvoice()),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: Column(
          children: [
            Expanded(flex: 2, child: MyCardsAndTransactionHistory()),
            Expanded(child: IncomeSection()),
          ],
        )),
      ],
    );
  }
}
