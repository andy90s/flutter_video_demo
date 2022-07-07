import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/ui/splash_page/splash_anim_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashAnimWidget(),
    );
  }
}
