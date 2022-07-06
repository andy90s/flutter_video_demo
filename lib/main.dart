import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/res/strings.dart';
import 'package:flutter_palyer_demo/routes/routes.dart';
import 'package:flutter_palyer_demo/ui/splash_page/splash_binding.dart';
import 'package:flutter_palyer_demo/ui/splash_page/splash_page.dart';
import 'package:flutter_palyer_demo/util/injection_init.dart';
import 'package:flutter_palyer_demo/util/local_util.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  runApp(GetMaterialApp(
    getPages: Routes.routePage,
    debugShowCheckedModeBanner: true,
    initialRoute: '/',
    builder: (context, child) => Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: child,
      ),
    ),
    translations: Messages(),
    locale: LocaleOptions.getDefault(),
    fallbackLocale: const Locale('en'),
    defaultTransition: Transition.fade,
    initialBinding: SplashBinding(),
    home: const SplashPage(),
  ));
}
