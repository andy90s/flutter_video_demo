import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/base/get_save_state_view.dart';
import 'package:flutter_palyer_demo/ui/complex_module/variety_page/variety_controller.dart';
import 'package:get/get.dart';

class VarietyPage extends GetSaveView<VarietyController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('VarietyPage')),

    body: SafeArea(
      child: Text('VarietyController'))
    );
  }
}