import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nsbm_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';
import 'package:nsbm_store/utils/validators/validator.dart';

class NSignUpForm extends StatelessWidget {
  const NSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          // Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      NValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: 'First Name', prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: NSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      NValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: 'Last name', prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: NSizes.spaceBtwInputFields,
          ),
          //Username
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                NValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
                labelText: 'Username', prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: NSizes.spaceBtwInputFields,
          ),
          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => NValidator.validateEmail(value),
            decoration: const InputDecoration(
                labelText: 'Email', prefixIcon: Icon(Iconsax.sms)),
          ),
          const SizedBox(
            height: NSizes.spaceBtwInputFields,
          ),
          // Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => NValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
                labelText: 'Phone Number', prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: NSizes.spaceBtwInputFields,
          ),
          //Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => NValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye)),
              ),
            ),
          ),
          const SizedBox(
            height: NSizes.spaceBtwSections,
          ),
          // Terms & Conditions checkbox
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Obx(
                  () => Checkbox(
                      value: controller.isAgreed.value,
                      onChanged: (value) => controller.isAgreed.value =
                          !controller.isAgreed.value),
                ),
              ),
              const SizedBox(
                width: NSizes.spaceBtwItems,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'I agree to the terms & conditions ',
                        style: Theme.of(context).textTheme.bodySmall)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: NSizes.spaceBtwSections,
          ),
          // Sign up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text('Create Account'),
            ),
          )
        ],
      ),
    );
  }
}
