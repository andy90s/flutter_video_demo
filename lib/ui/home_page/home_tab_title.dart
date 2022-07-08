import 'package:flutter/material.dart';

class TabTitleIcon extends StatelessWidget {
  TabTitleIcon({Key? key,required this.title,this.icon}) : super(key: key);
  String title = "";
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Tab(
      text: title,
      iconMargin: const EdgeInsets.all(4),
      icon: Icon(
        icon,
      ),
    );
  }
}
