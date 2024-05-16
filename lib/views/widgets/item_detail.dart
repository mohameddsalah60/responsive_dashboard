import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({
    super.key,
    required this.incomeItemDetailModel,
  });

  final IncomeItemDetailModel incomeItemDetailModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeItemDetailModel.color,
        ),
      ),
      title: Text(
        incomeItemDetailModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        '${incomeItemDetailModel.value}%',
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
