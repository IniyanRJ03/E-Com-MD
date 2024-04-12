import 'package:flutter/material.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';

class NSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: NSizes.appBarHeight,
    left: NSizes.defaultSpace,
    bottom: NSizes.defaultSpace,
    right: NSizes.defaultSpace,
  );
}
