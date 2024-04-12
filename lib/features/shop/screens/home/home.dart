import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nsbm_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:nsbm_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:nsbm_store/common/widgets/images/rounded_image.dart';
import 'package:nsbm_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:nsbm_store/common/widgets/texts/section_heading.dart';
import 'package:nsbm_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:nsbm_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:nsbm_store/utils/constants/image_strings.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NPrimaryHeaderContainer(
              child: Column(
                children: [
                  NHomeAppBar(),
                  const SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  const NSearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: NSizes.defaultSpace),
                    child: Column(
                      children: [
                        NSectionHeading(
                          title: 'Popular categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: NSizes.spaceBtwItems,
                        ),
                        NHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(NSizes.defaultSpace),
              child: Column(
                children: [
                  const NRoundedImage(
                    imageUrl: NImages.banner1,
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: NSizes.gridViewSpacing,
                        crossAxisSpacing: NSizes.gridViewSpacing,
                        mainAxisExtent: 288,
                      ),
                      itemBuilder: (_, index) => NProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
