import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class StringStyles {
  static const String home = 'home';
  static const String recommend = 'recommend';
  static const String teleplay = 'teleplay';
  static const String movie = 'movie';
  static const String anime = 'anime';
  static const String variety = 'variety';
  static const String greetings = 'greetings';
}

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          StringStyles.home: '首页',
          StringStyles.recommend: '推荐',
          StringStyles.teleplay: '番剧',
          StringStyles.movie: '电影',
          StringStyles.anime: '动漫',
          StringStyles.variety: '综艺',
          StringStyles.greetings: '刚好遇见你~',
        },
        'en_US': {
          StringStyles.home: 'Home',
          StringStyles.recommend: 'recommend',
          StringStyles.teleplay: 'TV',
          StringStyles.movie: 'Movie',
          StringStyles.anime: 'Anime',
          StringStyles.variety: 'Variety',
          StringStyles.greetings: 'Welcome',
        }
      };
}
