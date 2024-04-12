import 'package:flutter/material.dart';
import 'package:nsbm_store/utils/constants/colors.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';

class NSocialButton extends StatelessWidget {
  const NSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: NColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: NSizes.iconMd,
              height: NSizes.iconMd,
              image: AssetImage('assets/img/social/google.png'),
            ),
          ),
        ),
      ],
    );
  }
}