import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nsbm_store/common/widgets/loaders/loaders.dart';
import 'package:nsbm_store/navigation_menu.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();

  void login() async {
    final storage = GetStorage();
    try {
      NLoaders.successSnackBar(
        title: 'Success',
        message: 'Login success',
      );
      storage.write('email', email.text.trim());
      Get.to(() => const NavigationMenu());
    } catch (e) {
      NLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
