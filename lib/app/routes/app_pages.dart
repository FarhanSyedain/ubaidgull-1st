// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:ubaidgull/app/modules/home/bindings/about_binding.dart';
import 'package:ubaidgull/app/modules/home/controllers/about_controller.dart';
import 'package:ubaidgull/app/modules/home/views/about_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ABOUT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
  ];
}
