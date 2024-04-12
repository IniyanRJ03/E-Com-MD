import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:nsbm_store/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:nsbm_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart";
import "package:nsbm_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart";
import "package:nsbm_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart";
import "package:nsbm_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart";
import "package:nsbm_store/utils/constants/image_strings.dart";

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: NImages.onBoardingImage1,
                title: "Welcome to the NSBM Store",
                subTitle:
                    "Choose your student Merchandise form the official app",
              ),
              OnBoardingPage(
                image: NImages.onBoardingImage2,
                title: "Welcome to the NSBM Store",
                subTitle:
                    "Choose your student Merchandise form the official app",
              ),
              OnBoardingPage(
                image: NImages.onBoardingImage3,
                title: "Welcome to the NSBM Store",
                subTitle:
                    "Choose your student Merchandise form the official app",
              ),
            ],
          ),

          //skip Button
          const OnBoardSkip(),

          //Page indicator
          const OnBoardingDotNavigation(),

          //Next Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
