import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nsbm_store/features/authentication/controllers/login/login_controller.dart';
import 'package:nsbm_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:nsbm_store/features/authentication/screens/signup/signup.dart';
import 'package:nsbm_store/navigation_menu.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: NSizes.spaceBtwSections),
        child: Column(
          children: [
            //email
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.sms), labelText: 'E-mail'),
            ),
            const SizedBox(
              height: NSizes.spaceBtwInputFields,
            ),
            //Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: 'Password',
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: NSizes.spaceBtwInputFields / 2,
            ),
            // Remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text('Remember Me'),
                  ],
                ),
                //Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text('Forget password'),
                ),
              ],
            ),
            const SizedBox(height: NSizes.spaceBtwSections),
            // Sign In button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.login(),
                child: const Text("Sign In"),
              ),
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text("Create Account"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
