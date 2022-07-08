import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/res/colors.dart';
import 'package:flutter_palyer_demo/res/res.dart';
import 'package:flutter_palyer_demo/res/strings.dart';
import 'package:flutter_palyer_demo/res/style.dart';
import 'package:flutter_palyer_demo/routes/routes.dart';
import 'package:flutter_palyer_demo/ui/complex_module/anime_page/anime_page.dart';
import 'package:flutter_palyer_demo/ui/complex_module/movie_page/movie_page.dart';
import 'package:flutter_palyer_demo/ui/complex_module/recommend_page/recommend_page.dart';
import 'package:flutter_palyer_demo/ui/complex_module/teleplay_page/teleplay_page.dart';
import 'package:flutter_palyer_demo/ui/complex_module/variety_page/variety_page.dart';
import 'package:flutter_palyer_demo/widget/ripple_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ComplexPage extends StatefulWidget {
  const ComplexPage({Key? key}) : super(key: key);

  @override
  State<ComplexPage> createState() => _ComplexPageState();
}

class _ComplexPageState extends State<ComplexPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  //List<String> listPage = [StringStyles.recommend.tr,StringStyles.teleplay.tr,StringStyles.movie.tr,StringStyles.anime.tr,];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: ColorStyle.mainColor,
                    labelColor: ColorStyle.mainColor,
                    labelStyle: Styles.style1A2F51_18,
                    unselectedLabelStyle: Styles.style1A2F51_18,
                    unselectedLabelColor: ColorStyle.color001642,
                    controller: tabController,
                    tabs: [
                      Tab(
                        text: StringStyles.recommend.tr,
                      ),
                      Tab(
                        text: StringStyles.teleplay.tr,
                      ),
                      Tab(
                        text: StringStyles.movie.tr,
                      ),
                      Tab(
                        text: StringStyles.anime.tr,
                      ),
                      Tab(
                        text: StringStyles.variety.tr,
                      )
                    ]),
              ),
              // const Expanded(child: SizedBox()),
              Ripple(
                  circular: 10,
                  onTap: () => Get.toNamed(Routes.homePage),
                  child: SvgPicture.asset(
                    Res.assetsImagesSearch,
                    color: Colors.black87,
                    width: 30,
                  )),
              // const SizedBox(
              //   width: 20,
              // ),
            ],
          ),
          Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: [RecommendPage(), TeleplayPage(),MoviePage(),AnimePage(),VarietyPage()]))
        ],
      )),
    );
  }
}
