import 'package:flutter/material.dart';
import 'package:nsbm_store/common/styles/spacing_styles.dart';
import 'package:nsbm_store/common/widgets/login_signup/from_divider.dart';
import 'package:nsbm_store/common/widgets/login_signup/social_buttons.dart';
import 'package:nsbm_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:nsbm_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: NSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo title sub title
              NLoginHeader(),
              // Form
              LoginForm(),
              // Divider
              NDividerForm(dividerText: 'Or Sign In with'),
              SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              // Social Btn
              NSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}