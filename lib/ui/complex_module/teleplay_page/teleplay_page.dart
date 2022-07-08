import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/base/get_save_state_view.dart';
import 'package:flutter_palyer_demo/ui/complex_module/teleplay_page/teleplay_controller.dart';
import 'package:get/get.dart';

class TeleplayPage extends GetSaveView<TeleplayController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('TeleplayPage')),

    body: SafeArea(
      child: Text('TeleplayController'))
    );
  }
}