import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsbm_store/common/widgets/success_screens/success_screen.dart';
import 'package:nsbm_store/features/authentication/screens/login/login.dart';
import 'package:nsbm_store/utils/constants/image_strings.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';
import 'package:nsbm_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(NImages.verifyIllustration),
                width: NHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),

              /// Title & subtitle
              Text(
                'Verify your email address!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              Text(
                'NSBM99@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              Text(
                'Congratulations! Your Account Awaits: Verify Your Email to Start Shopping at the NSBM Official Merchandise store',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: NImages.successIllustration,
                      title: 'Your Account is created successfully',
                      subTitle:
                          'Congratulations! Your Account was Created Successfully Now You Can Start Shopping at the NSBM Official Merchandise store',
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Resend Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
