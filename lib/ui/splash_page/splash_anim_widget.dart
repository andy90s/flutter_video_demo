import 'package:flutter/widgets.dart';
import 'package:flutter_palyer_demo/base/get_common_view.dart';
import 'package:flutter_palyer_demo/res/res.dart';
import 'package:flutter_palyer_demo/res/strings.dart';
import 'package:flutter_palyer_demo/routes/routes.dart';
import 'package:flutter_palyer_demo/ui/splash_page/splash_controller.dart';
import 'package:get/get.dart';

class SplashAnimWidget extends GetCommonView<SplashController> {
  const SplashAnimWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        onEnd: () {
          Get.offNamed(Routes.homePage);
        },
        opacity: controller.opacityLevel,
        duration: const Duration(milliseconds: 2000),
        child: Container(
          margin: const EdgeInsets.only(top: 160),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                Res.assetsImagesApplication,
                width: 110,
                height: 110,
                fit: BoxFit.fitWidth,
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Text(StringStyles.greetings.tr),
              ),
            ],
          ),
        ));
  }
}
