import 'package:flutter/material.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';

class NLoginHeader extends StatelessWidget {
  const NLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          height: 120,
          image: AssetImage('assets/img/logos/nsbm-logo.png'),
        ),
        Text(
          'Welcome to NSBM Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: NSizes.sm,
        ),
        Text(
          'Login to get your Merchandise',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}