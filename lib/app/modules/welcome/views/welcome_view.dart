import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/welcome.png",
                width: 258.w,
                height: 258.h,
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff090F47),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    width: 102.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFA629),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "MedHub",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff090F47),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Text(
                "Do you want some help with your\nhealth to get better life?",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff090F47).withOpacity(0.45),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0F3759),
                  minimumSize: Size(311.w, 50.w),
                ),
                onPressed: () {
                  Get.toNamed("/signup");
                },
                child: Text(
                  "SIGN UP WITH EMAIL",
                  style: TextStyle(
                    fontFamily: "Overpass",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: Size(311.w, 50.w),
                  side: BorderSide(
                    color: const Color(0xff0F3759).withOpacity(0.1),
                    width: 1,
                  ),
                ),
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        width: 18.w,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "CONTINUE WITH FACEBOOK",
                        style: TextStyle(
                          fontFamily: "Overpass",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff0F3759),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: Size(311.w, 50.w),
                  side: BorderSide(
                    color: const Color(0xff0F3759).withOpacity(0.1),
                    width: 1,
                  ),
                ),
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/google.svg",
                        width: 18.w,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "CONTINUE WITH GOOGLE",
                        style: TextStyle(
                          fontFamily: "Overpass",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff0F3759),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              TextButton(
                onPressed: () {
                  Get.toNamed("/login");
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff090F47).withOpacity(0.45),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
