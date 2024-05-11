import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';

import 'active_and_inactive_item_list_tile.dart';

class DarwerItem extends StatelessWidget {
  const DarwerItem(
      {super.key, required this.darwerItemModel, required this.isActive});
  final DarwerItemModel darwerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItemListTile(darwerItemModel: darwerItemModel)
        : InActiveItemListTile(darwerItemModel: darwerItemModel);
  }
}
