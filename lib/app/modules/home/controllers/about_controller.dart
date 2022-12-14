import 'package:get/get.dart';

class AboutController extends GetxController {
  //Todo: Put name and bio here
  final _authorBio = ''.obs;
  final _authorName = ''.obs;

  String get authorBio => _authorBio.value;
  String get authorName => _authorName.value;
}
