import 'package:flutter/material.dart';

import 'all_expansess_qnd_quickInvoice.dart';
import 'income_section.dart';
import 'mycards_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpansessAndQuickInvoice(),
          MyCardsAndTransactionHistory(),
          IncomeSection(),
        ],
      ),
    );
  }
}
