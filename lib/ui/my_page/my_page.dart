import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/ui/my_page/my_controller.dart';
import 'package:get/get.dart';

class MyPage extends GetView<MyController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyPage')),

    body: SafeArea(
      child: Text('MyController'))
    );
  }
}