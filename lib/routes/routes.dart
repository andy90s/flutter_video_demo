import 'package:flutter_palyer_demo/ui/home_page/home_page.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const String homePage = '/home';

  static final routePage = [
    GetPage(name: homePage, page: () => const HomePage()),
  ];
}
