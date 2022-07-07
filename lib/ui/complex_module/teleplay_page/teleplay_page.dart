import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/base/getx_controller_inject.dart';
import 'package:get/get.dart';

class TeleplayPage extends GetView<BaseGetController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('TeleplayPage')),

    body: SafeArea(
      child: Text('TeleplayController'))
    );
  }
}