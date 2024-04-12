import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:nsbm_store/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:nsbm_store/utils/constants/colors.dart";
import "package:nsbm_store/utils/constants/sizes.dart";
import "package:nsbm_store/utils/device/device_utility.dart";
import "package:nsbm_store/utils/helpers/helper_functions.dart";

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);

    return Positioned(
      right: NSizes.defaultSpace,
      bottom: NDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          side: const BorderSide(
            width: 0,
          ),
          backgroundColor: dark ? NColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
