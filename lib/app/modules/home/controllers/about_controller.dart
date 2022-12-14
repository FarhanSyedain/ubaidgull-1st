import 'package:get/get.dart';

class AboutController extends GetxController {
  //Todo: Put name and bio and dp here
  final _authorBio = ''.obs;
  final _authorName = ''.obs;
  final _authorDPAsset = ''.obs;

  String get authorBio => _authorBio.value;
  String get authorName => _authorName.value;
  String get authorDPAsset => _authorDPAsset.value;
}
