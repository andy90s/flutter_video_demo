import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/ui/complex_module/recommend_page/recommend_controller.dart';
import 'package:get/get.dart';

class RecommendPage extends GetView<RecommendController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('RecommendPage')),

    body: SafeArea(
      child: Text('RecommendController'))
    );
  }
}