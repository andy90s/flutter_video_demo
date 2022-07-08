import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/base/get_save_state_view.dart';
import 'package:flutter_palyer_demo/ui/complex_module/anime_page/anime_controller.dart';
import 'package:get/get.dart';

class AnimePage extends GetSaveView<AnimeController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('AnimePage')),

    body: SafeArea(
      child: Text('AnimeController'))
    );
  }
}