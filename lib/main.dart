import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nsbm_store/app.dart';
import 'package:nsbm_store/data/repositories/authentication/authentication_repository.dart';
import 'package:nsbm_store/firebase_options.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  // local storage init
  await GetStorage.init();
  // Await Splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Firebase init
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  
  runApp(const App());
}
