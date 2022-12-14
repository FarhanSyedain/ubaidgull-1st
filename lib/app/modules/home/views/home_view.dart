import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Stack(
        children: [
          Positioned(
            top: 127,
            left: 67,
            child: Image.asset("assets/images/sqare.png"),
          ),
          Column(
            children: [
              const SizedBox(height: 221),
              const Text(
                "Book Cover\nImage",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "NunitoSans"),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 111),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "The Tale of Great\nAlbantara",
                              style: TextStyle(
                                  fontSize: 28,
                                  height: 1.7,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NunitoSans"),
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              softWrap: true,
                            ),
                            if (false)
                              PopupMenuButton<String>(
                                icon: const ImageIcon(
                                  AssetImage(
                                    "assets/images/edit.png",
                                  ),
                                  color: Color(0xffF56E4C),
                                  size: 16,
                                ),
                                onSelected: (value) {},
                                itemBuilder: (BuildContext context) {
                                  return [
                                    const PopupMenuItem(
                                      value: '/hello',
                                      child: Text("Start Over"),
                                    ),
                                    const PopupMenuItem(
                                      value: '/about',
                                      child: Text("About the author"),
                                    ),
                                  ];
                                },
                              ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffF56E4C),
                              fontFamily: "NunitoSans"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ...",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "NunitoSans",
                              height: 1.7,
                              letterSpacing: 0.5,
                              color: Color.fromRGBO(50, 52, 56, 0.8)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: Get.width,
                          height: 57,
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(
                              blurRadius: 75,
                              offset: Offset(0, 6),
                              color: Color.fromRGBO(
                                100,
                                87,
                                87,
                                0.05,
                              ),
                            )
                          ], borderRadius: BorderRadius.circular(30)),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF56E4C),
                                shape: const StadiumBorder(),
                                elevation: 0,
                              ),
                              onPressed: () {},
                              child: const Text("Start Reading",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "NunitoSans"))),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
