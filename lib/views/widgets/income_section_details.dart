import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_details_model.dart';

import 'item_detail.dart';

class IncomeSectionDetails extends StatelessWidget {
  const IncomeSectionDetails({super.key});
  static const item = [
    IncomeItemDetailModel(
        value: '40', title: 'Design service', color: Color(0xff208CC8)),
    IncomeItemDetailModel(
        value: '25', title: 'Design product', color: Color(0xff4EB7F2)),
    IncomeItemDetailModel(
        value: '20', title: 'Product royalti', color: Color(0xff064061)),
    IncomeItemDetailModel(
        value: '22', title: 'Other', color: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: item.length,
      itemBuilder: (context, index) {
        return ItemDetail(
          incomeItemDetailModel: item[index],
        );
      },
    );
  }
}
