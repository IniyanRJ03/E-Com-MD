import 'package:flutter/material.dart';
import 'package:nsbm_store/utils/constants/colors.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';
import 'package:nsbm_store/utils/device/device_utility.dart';
import 'package:nsbm_store/utils/helpers/helper_functions.dart';

class NSearchContainer extends StatelessWidget {
  const NSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: NSizes.defaultSpace),
      child: Container(
        width: NDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(NSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? NColors.dark
                  : NColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(NSizes.cardRadiusLg),
          border: showBorder
              ? Border.all(
                  color: NColors.grey,
                )
              : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: NColors.darkerGrey),
            const SizedBox(
              width: NSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}