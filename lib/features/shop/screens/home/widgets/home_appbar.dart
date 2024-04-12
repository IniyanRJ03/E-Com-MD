import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsbm_store/common/global_count.dart';
import 'package:nsbm_store/common/widgets/appbar/appbar.dart';
import 'package:nsbm_store/common/widgets/products/cart/cart_icon_menu.dart';
import 'package:nsbm_store/features/shop/screens/cart/cart.dart';
import 'package:nsbm_store/utils/constants/colors.dart';

class NHomeAppBar extends StatelessWidget {
  NHomeAppBar({
    super.key,
  });

  final CountController _countController = Get.find();

  @override
  Widget build(BuildContext context) {
    return NAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to NSBM Store',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: NColors.grey),
          ),
          Obx(
            () => Text(
              _countController.enteredValue.value,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: NColors.white),
            ),
          ),
        ],
      ),
      actions: [
        NCartCounterIcon(
          onPressed: () => Get.to(() => CartScreen()),
          iconColor: NColors.white,
        ),
      ],
    );
  }
}
