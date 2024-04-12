import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsbm_store/common/widgets/loaders/loaders.dart';
import 'package:nsbm_store/data/repositories/authentication/authentication_repository.dart';
import 'package:nsbm_store/data/repositories/user/user_repository.dart';
import 'package:nsbm_store/features/authentication/screens/signup/verify_email.dart';
import 'package:nsbm_store/features/personalization/models/user_model.dart';
import 'package:nsbm_store/utils/constants/image_strings.dart';
import 'package:nsbm_store/utils/helpers/network_manager.dart';
import 'package:nsbm_store/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Variables
  final hidePassword = true.obs;
  final isAgreed = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      // Start Loading
      NFullScreenLoader.openLoadingDialog(
          'we are processing your information...', NImages.processing);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        NFullScreenLoader.stopLoading();
        return;
      }
      if (signupFormKey.currentState!.validate()) {
        NFullScreenLoader.stopLoading();
        return;
      }

      if (!isAgreed.value) {
        NLoaders.warningSnackBar(
            title: 'Accept terms',
            message: 'Please accept the terms & conditions');
        return;
      }

      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // NFullScreenLoader.stopLoading();

      NLoaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your account has been created! Verify email to continue.',
      );

      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      NFullScreenLoader.stopLoading();
      NLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
