import 'package:flutter/material.dart';

import 'all_expansess_header.dart';
import 'all_expansess_items_list_view.dart';
import 'custom_background_container.dart';

class AllExpansess extends StatelessWidget {
  const AllExpansess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpansessItemsListView(),
        ],
      ),
    );
  }
}
