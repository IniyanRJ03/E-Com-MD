import 'package:get/get.dart';
import 'package:nsbm_store/common/global_count.dart';
import 'package:nsbm_store/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(CountController());
  }
}
