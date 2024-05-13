import 'package:flutter/material.dart';

import 'all_expansess_header.dart';
import 'all_expansess_items_list_view.dart';

class AllExpansess extends StatelessWidget {
  const AllExpansess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 40),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      child: const Column(
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
