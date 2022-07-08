import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/res/strings.dart';
import 'package:flutter_palyer_demo/ui/complex_module/main_page/complex_page.dart';
import 'package:flutter_palyer_demo/ui/complex_module/recommend_page/recommend_page.dart';
import 'package:flutter_palyer_demo/ui/home_page/home_tab_title.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 1, vsync: this);
    WidgetsBinding.instance.addObserver(this);

    // tab切换
    tabController?.addListener(() {
      var index = tabController?.index;

      if (index == (tabController?.length ?? 0) - 1) {}
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: TabBarView(
        children: [ComplexPage()],
        controller: tabController,
      ),
      bottomNavigationBar: Container(
        height: 65,

        child: TabBar(tabs: [
          TabTitleIcon(
            title: StringStyles.home.tr,
          )
        ],
        controller: tabController,),

      ),
    );
  }
}
