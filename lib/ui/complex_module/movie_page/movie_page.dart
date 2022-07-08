import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/base/get_save_state_view.dart';
import 'package:flutter_palyer_demo/ui/complex_module/movie_page/movie_controller.dart';
import 'package:get/get.dart';

class MoviePage extends GetSaveView<MovieController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MoviePage')),

    body: SafeArea(
      child: Text('MovieController'))
    );
  }
}