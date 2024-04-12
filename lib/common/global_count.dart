import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nsbm_store/common/widgets/loaders/loaders.dart';
import 'package:nsbm_store/navigation_menu.dart';

class CountController extends GetxController {
  var count = 0.obs;
  var price = 0.obs;
  var enteredValue = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadStoredValue();
    calculatePrice(); // Calculate the initial price
  }

  void increment() {
    NLoaders.successSnackBar(
        title: 'Success', message: 'Item Added to the cart');
    count.value++; // Increment the count
    calculatePrice(); // Recalculate the price when count changes
  }

  void loadStoredValue() {
    var storedValue = GetStorage().read('email');
    if (storedValue != null) {
      enteredValue.value = storedValue; // Update the entered value
    }
  }

  void deduct(int value) {
    count.value -= value; // Decrease the count by the specified value
    if (count.value < 0) {
      count.value = 0; // Ensure count doesn't go below zero
    }
    calculatePrice(); // Recalculate the price after deduction
  }

  void calculatePrice() {
    price.value = 2000 * count.value; // Calculate the price
  }

  void reset() {
    Get.to(() => const NavigationMenu());
    count.value = 0; // Reset the count
    calculatePrice();
    NLoaders.successSnackBar(title: 'Success', message: 'Order is placed');
  }
}
