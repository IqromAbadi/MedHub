import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';

class OnboardingController extends GetxController {
  final List<ContentConfig> listContentConfig = <ContentConfig>[].obs;

  @override
  void onInit() {
    super.onInit();

    listContentConfig.addAll([
      ContentConfig(
        widgetTitle: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/on1.png",
              width: 350,
            ),
            const SizedBox(height: 20),
            const Text(
              "View and buy\nMedicine online",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Overpass',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff090F47),
              ),
            ),
            const Text(
              "Etiam mollis metus non purus\nfaucibus sollicitudin. Pellentesque\nsagittis mi. Integer.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Overpass',
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff090F47),
              ),
            ),
          ],
        ),
      ),
      ContentConfig(
        widgetTitle: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/on2.png",
              width: 350,
            ),
            const SizedBox(height: 20),
            const Text(
              "Online medical &\nHealthcare",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Overpass',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff090F47),
              ),
            ),
            const Text(
              "Etiam mollis metus non purus\nfaucibus sollicitudin. Pellentesque\nsagittis mi. Integer.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Overpass',
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff090F47),
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  void onDonePress() {
    Get.offAllNamed('/welcome');
  }
}
