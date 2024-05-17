import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class InActiveItemListTile extends StatelessWidget {
  const InActiveItemListTile({
    super.key,
    required this.darwerItemModel,
  });

  final DarwerItemModel darwerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(darwerItemModel.image),
      title: Text(
        darwerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}

class ActiveItemListTile extends StatelessWidget {
  const ActiveItemListTile({
    super.key,
    required this.darwerItemModel,
  });

  final DarwerItemModel darwerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(darwerItemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          darwerItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(
          color: Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
