import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsbm_store/bindings/genaral_bindings.dart';
import 'package:nsbm_store/utils/constants/colors.dart';
import 'package:nsbm_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: NAppTheme.lightTheme,
      darkTheme: NAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(backgroundColor: NColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white,),),),
      // home: const OnBoardingScreen(),
    );
  }
}
