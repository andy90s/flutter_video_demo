import 'package:flutter_palyer_demo/ui/my_page/my_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MyController());
  }
}
