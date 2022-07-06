import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class StringStyles {
  static const String recommend = 'recommend';
  static const String greetings = 'greetings';
}

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          StringStyles.recommend: '推荐',
          StringStyles.greetings: '刚好遇见你~',
        },
        'en_US': {
          StringStyles.recommend: 'recommend',
          StringStyles.greetings: 'Welcome',
        }
      };
}
