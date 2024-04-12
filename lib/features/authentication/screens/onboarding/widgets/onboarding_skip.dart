import "package:flutter/material.dart";
import "package:nsbm_store/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:nsbm_store/utils/constants/colors.dart";
import "package:nsbm_store/utils/constants/sizes.dart";
import "package:nsbm_store/utils/device/device_utility.dart";
import "package:nsbm_store/utils/helpers/helper_functions.dart";

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);

    return Positioned(
      top: NDeviceUtils.getAppBarHeight(),
      right: NSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text(
          'Skip',
          style: TextStyle(color: dark ? Colors.white : NColors.primary),
        ),
      ),
    );
  }
}
