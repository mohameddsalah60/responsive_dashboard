import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expansess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

import 'all_expansess_item.dart';

class AllExpansessItemsListView extends StatefulWidget {
  const AllExpansessItemsListView({
    super.key,
  });

  @override
  State<AllExpansessItemsListView> createState() =>
      _AllExpansessItemsListViewState();
}

class _AllExpansessItemsListViewState extends State<AllExpansessItemsListView> {
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        name: 'Balance',
        date: 'April 2022',
        price: 20.129),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        name: 'Income',
        date: 'April 2022',
        price: 20.129),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        name: 'Expenses',
        date: 'April 2022',
        price: 20.129),
  ];
  int itemClick = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              log(e.key.toString());
              setState(() {
                itemClick = index;
              });
            },
            child: Padding(
              padding: index == 1
                  ? const EdgeInsets.symmetric(horizontal: 12)
                  : const EdgeInsets.symmetric(),
              child: AllExpensesItem(
                allExpensesItemModel: item,
                isActive: index == itemClick,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
