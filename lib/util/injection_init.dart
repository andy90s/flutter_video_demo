import 'package:get/instance_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Injection {
  static Future<void> init() async {
    await Get.putAsync(() => SharedPreferences.getInstance());
    // Get.lazyPut(() => null)
  }
}
