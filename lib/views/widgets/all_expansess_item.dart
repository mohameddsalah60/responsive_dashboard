import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expansess_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'all_expansess_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: isActive ? const Color(0xff4EB7F2) : Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffF1F1F1), width: 1),
            borderRadius: BorderRadius.circular(12),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            isActive: isActive,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.name,
              style: AppStyles.styleSemiBold16(context).copyWith(
                color: isActive ? const Color(0xffFFFFFF) : null,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: isActive ? const Color(0xffFAFAFA) : null,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              r'$' + allExpensesItemModel.price.toString(),
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: isActive ? const Color(0xffFFFFFF) : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
