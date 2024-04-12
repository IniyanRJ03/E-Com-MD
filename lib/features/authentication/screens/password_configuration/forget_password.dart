import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nsbm_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Headings
            Text(
              "Forget Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems,
            ),
            Text(
              "Enter your email to reset the password",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: NSizes.spaceBtwSections * 2,
            ),

            //Text field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Iconsax.sms),
              ),
            ),
            const SizedBox(
              height: NSizes.spaceBtwSections,
            ),

            //Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text('Submit')))
          ],
        ),
      ),
    );
  }
}
