import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'all_expansess.dart';
import 'quick_invoice.dart';

class AllExpansessAndQuickInvoice extends StatelessWidget {
  const AllExpansessAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpansess(),
          QuickInvoice(),
        ],
      ),
    );
  }
}
