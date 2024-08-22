import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub/app/modules/onboarding/views/onboarding_view.dart';
import 'package:page_transition/page_transition.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: const OnboardingView(),
          ),
        );
      },
    );

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/patern.png',
              fit: BoxFit.cover,
              width: 1.sw,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              'assets/icons/logo.svg',
              width: 150.w,
              height: 150.h,
            ),
          ),
        ],
      ),
    );
  }
}
