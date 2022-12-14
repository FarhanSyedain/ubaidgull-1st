import 'package:get/get.dart';
import 'package:ubaidgull/app/modules/home/controllers/about_controller.dart';

import '../controllers/home_controller.dart';

class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutController>(
      () => AboutController(),
    );
  }
}
