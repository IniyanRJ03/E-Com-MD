import "package:flutter/material.dart";
import "package:nsbm_store/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:nsbm_store/utils/constants/colors.dart";
import "package:nsbm_store/utils/constants/sizes.dart";
import "package:nsbm_store/utils/device/device_utility.dart";
import "package:nsbm_store/utils/helpers/helper_functions.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = NHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: NDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: NSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? NColors.light : NColors.dark, dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
