import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 38),
                Image.asset('icons/back_arrow.png'),
                const SizedBox(height: 45),
                const Text(
                  'About the author',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xFFF56E4C),
                  ),
                ),
                const SizedBox(height: 11),
                Row(
                  children: [
                    Text(
                      controller.authorName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    ClipOval(
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(controller.authorDPAsset),
                      ),
                    ),
                  ],
                ),
                Text(
                  controller.authorBio,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
