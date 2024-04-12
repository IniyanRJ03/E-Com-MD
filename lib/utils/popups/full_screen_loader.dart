import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsbm_store/common/widgets/loaders/animation_loader.dart';
import 'package:nsbm_store/utils/constants/colors.dart';
import 'package:nsbm_store/utils/helpers/helper_functions.dart';

class NFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: NHelperFunctions.isDarkMode(Get.context!)
              ? NColors.dark
              : NColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              NAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
