import 'package:flutter/material.dart';
import 'package:nsbm_store/utils/constants/colors.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';
import 'package:nsbm_store/utils/helpers/helper_functions.dart';

class NCircularIcon extends StatelessWidget {
  const NCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = NSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? NColors.black.withOpacity(0.9)
                : NColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
