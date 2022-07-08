import 'package:flutter_palyer_demo/ui/complex_module/anime_page/anime_controller.dart';
import 'package:flutter_palyer_demo/ui/complex_module/main_page/complex_controller.dart';
import 'package:flutter_palyer_demo/ui/complex_module/movie_page/movie_controller.dart';
import 'package:flutter_palyer_demo/ui/complex_module/recommend_page/recommend_controller.dart';
import 'package:flutter_palyer_demo/ui/complex_module/teleplay_page/teleplay_controller.dart';
import 'package:flutter_palyer_demo/ui/complex_module/variety_page/variety_controller.dart';
import 'package:flutter_palyer_demo/ui/my_page/my_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
    Get.lazyPut(() => ComplexController());
    Get.lazyPut(() => RecommendController());
    Get.lazyPut(() => TeleplayController());
    Get.lazyPut(() => MovieController());
    Get.lazyPut(() => AnimeController());
    Get.lazyPut(() => VarietyController());
  }
}
