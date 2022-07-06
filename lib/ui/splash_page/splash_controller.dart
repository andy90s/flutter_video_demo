import 'package:flutter_palyer_demo/base/getx_controller_inject.dart';

class SplashController extends BaseGetController {
  ///用来控制动画的状态
  double opacityLevel = 0.0;

  @override
  void onInit() {
    super.onInit();
    lazyInitAnim();
  }

  lazyInitAnim() {
    Future.delayed(const Duration(milliseconds: 200), () {
      opacityLevel = 1.0;
      update();
    });
  }
}
