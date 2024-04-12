import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nsbm_store/common/global_count.dart';
import 'package:nsbm_store/common/widgets/appbar/appbar.dart';
import 'package:nsbm_store/common/widgets/custom_shapes/containers/circular_icon.dart';
import 'package:nsbm_store/common/widgets/images/rounded_image.dart';
import 'package:nsbm_store/utils/constants/colors.dart';
import 'package:nsbm_store/utils/constants/image_strings.dart';
import 'package:nsbm_store/utils/constants/sizes.dart';
import 'package:nsbm_store/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final CountController _countController = Get.find();

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: NAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 1,
          separatorBuilder: (_, __) => const SizedBox(
            height: NSizes.spaceBtwSections,
          ),
          itemBuilder: (_, index) => Column(
            children: [
              Row(
                children: [
                  NRoundedImage(
                    imageUrl: NImages.product1,
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.all(NSizes.sm),
                    backgroundColor: dark ? NColors.darkGrey : NColors.light,
                  ),
                  const SizedBox(
                    width: NSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            'Plymouth University hoodie',
                            style: Theme.of(context).textTheme.labelLarge,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(
                          height: NSizes.spaceBtwItems,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                NCircularIcon(
                                  icon: Iconsax.minus,
                                  width: 32,
                                  height: 32,
                                  size: NSizes.md,
                                  color: dark ? NColors.white : NColors.black,
                                  backgroundColor:
                                      dark ? NColors.darkGrey : NColors.light,
                                  onPressed: () {
                                    _countController.deduct(1);
                                  },
                                ),
                                const SizedBox(
                                  width: NSizes.spaceBtwItems,
                                ),
                                Obx(
                                  () => Text('${_countController.count.value}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                ),
                                const SizedBox(
                                  width: NSizes.spaceBtwItems,
                                ),
                                NCircularIcon(
                                  icon: Iconsax.add,
                                  width: 32,
                                  height: 32,
                                  size: NSizes.md,
                                  color: dark ? NColors.white : NColors.black,
                                  backgroundColor: NColors.primary,
                                  onPressed: () {
                                    _countController.increment();
                                  },
                                ),
                              ],
                            ),
                            Text(
                              'Rs 2000',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            _countController.reset();
          },
          child: Obx(
            () => Text('Place order for Rs ${_countController.price.value}.00'),
          ),
        ),
      ),
    );
  }
}
