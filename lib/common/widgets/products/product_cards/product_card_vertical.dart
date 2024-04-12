import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nsbm_store/common/global_count.dart';
import 'package:nsbm_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:nsbm_store/common/widgets/images/rounded_image.dart';
import 'package:nsbm_store/utils/constants/colors.dart';
import 'package:nsbm_store/common/styles/shadows.dart';
import 'package:nsbm_store/utils/constants/image_strings.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';
import 'package:nsbm_store/utils/helpers/helper_functions.dart';

class NProductCardVertical extends StatelessWidget {
  NProductCardVertical({super.key});

  final CountController _countController = Get.find();

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [NShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(NSizes.productImageRadius),
          color: dark ? NColors.darkGrey : NColors.white,
        ),
        child: Column(
          children: [
            //thumbnail
            NRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(NSizes.sm),
              backgroundColor: dark ? NColors.dark : NColors.light,
              child: Stack(
                children: [
                  //thumbnail image
                  const NRoundedImage(
                      imageUrl: NImages.product1, applyImageRadius: true),
                  Positioned(
                    top: 12,
                    child: NRoundedContainer(
                      radius: NSizes.sm,
                      backgroundColor: NColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: NSizes.sm, vertical: NSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: NColors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems / 2,
            ),
            //Details
            Padding(
              padding: const EdgeInsets.only(left: NSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plymouth University hoodie',
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rs 2000',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: NColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(NSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(NSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: NSizes.iconLg * 1.2,
                          height: NSizes.iconLg * 1.2,
                          child: Center(
                              child: IconButton(
                            onPressed: () {
                              _countController
                                  .increment(); // Increment the count
                            },
                            icon: const Icon(
                              Iconsax.add,
                              color: NColors.white,
                            ),
                          )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
