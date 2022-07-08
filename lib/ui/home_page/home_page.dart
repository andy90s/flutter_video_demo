import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/res/colors.dart';
import 'package:flutter_palyer_demo/res/shadow_style.dart';
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
      backgroundColor: Colors.white12,
      body: TabBarView(
        controller: tabController,
        children: const [ComplexPage()],
      ),
      bottomNavigationBar: Container(
        height: 65,
        decoration: ShadowStyle.white12TopSpread4Blur10(radius: 0),
        child: TabBar(
          indicator: const BoxDecoration(),
          labelColor: ColorStyle.mainColor,
          unselectedLabelColor: ColorStyle.colorB8C0D4,
          tabs: [
            TabTitleIcon(
              title: StringStyles.home.tr,
              icon: Icons.home,
            )
          ],
          controller: tabController,
        ),
      ),
    );
  }
}
