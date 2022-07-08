import 'package:flutter_palyer_demo/ui/home_page/home_binding.dart';
import 'package:flutter_palyer_demo/ui/home_page/home_page.dart';
import 'package:flutter_palyer_demo/ui/splash_page/splash_binding.dart';
import 'package:flutter_palyer_demo/ui/splash_page/splash_page.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const String homePage = '/home';
  static const String splashPage = '/splash';

  static final routePage = [
    GetPage(
        name: homePage, page: () => const HomePage(), binding: HomeBinding()),
    GetPage(
        name: splashPage,
        page: () => const SplashPage(),
        binding: SplashBinding()),
  ];
}
