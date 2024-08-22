import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/images/arrowback.svg",
            width: 22.w,
            height: 22.h,
          ),
          color: const Color(0xff090F47),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff090F47),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    cursorColor: const Color(0xff090F47),
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff090F47).withOpacity(0.45),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xff00A59B), width: 1.w),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xff090F47).withOpacity(0.1)),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.w),
                        child: SvgPicture.asset(
                          "assets/images/person.svg",
                          color: const Color(0xff090F47),
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: 12.w, bottom: 8.h),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    cursorColor: const Color(0xff090F47),
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff090F47).withOpacity(0.45),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xff00A59B), width: 1.w),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xff090F47).withOpacity(0.1)),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.w),
                        child: SvgPicture.asset(
                          "assets/images/lock.svg",
                          color: const Color(0xff090F47),
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: 12.w, bottom: 8.h),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot?",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff090F47),
                      minimumSize: Size(311.w, 50.h),
                    ),
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Get.toNamed("/signup");
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/back.svg",
                      width: 10.w,
                      height: 10.h,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "Don't have an account? Sign Up",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff090F47).withOpacity(0.45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
