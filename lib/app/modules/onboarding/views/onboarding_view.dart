import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroSlider(
        key: UniqueKey(),
        listContentConfig: controller.listContentConfig,
        onDonePress: controller.onDonePress,
        renderNextBtn: _buildButton('Next', Color(0xff00A59B)),
        renderSkipBtn: _buildButton('Skip', Color(0x090F47).withOpacity(0.45)),
        renderDoneBtn: _buildButton('Done', Color(0xff00A59B)),
      ),
    );
  }

  Widget _buildButton(String text, Color textColor) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
