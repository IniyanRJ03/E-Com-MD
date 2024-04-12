import 'package:flutter/material.dart';
import 'package:nsbm_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:nsbm_store/utils/constants/image_strings.dart';

class NHomeCategories extends StatelessWidget {
  const NHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return NVerticalImageText(
            image: NImages.bottles,
            title: 'Bottles',
            onTap: () {},
          );
        },
      ),
    );
  }
}
