import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nsbm_store/common/widgets/appbar/appbar.dart';
import 'package:nsbm_store/common/widgets/login_signup/from_divider.dart';
import 'package:nsbm_store/common/widgets/login_signup/social_buttons.dart';
import 'package:nsbm_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NAppBar(
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                'Lets create your account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: NSizes.spaceBtwSections),
              //Form
              const NSignUpForm(),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),

              /// Divider
              const NDividerForm(dividerText: 'OR SIGN UP WITH'),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              // Social button
              const NSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
