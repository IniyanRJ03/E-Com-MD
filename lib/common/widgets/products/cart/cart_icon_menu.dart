import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nsbm_store/common/global_count.dart';
import 'package:nsbm_store/utils/constants/colors.dart';

class NCartCounterIcon extends StatelessWidget {
  NCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;
  final CountController _countController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag),
          color: iconColor,
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: NColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Obx(
                () => Text(
                  '${_countController.count.value}',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: NColors.white, fontSizeFactor: 0.8),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
