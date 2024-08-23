import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/arrowback.svg",
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
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create your account",
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
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47),
                    ),
                    decoration: InputDecoration(
                      labelText: "Your Name",
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
                      contentPadding: EdgeInsets.only(left: 12.w, bottom: 8.h),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    cursorColor: const Color(0xff090F47),
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47),
                    ),
                    decoration: InputDecoration(
                      labelText: "Mobile Number",
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
                      contentPadding: EdgeInsets.only(left: 12.w, bottom: 8.h),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    cursorColor: const Color(0xff090F47),
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47),
                    ),
                    decoration: InputDecoration(
                      labelText: "Email",
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
                      contentPadding: EdgeInsets.only(left: 12.w, bottom: 8.h),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    cursorColor: const Color(0xff090F47),
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47),
                    ),
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
                      contentPadding: EdgeInsets.only(left: 12.w, bottom: 8.h),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          weight: 16.w,
                          color: Color(0xff090F47).withOpacity(0.45),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff090F47),
                      minimumSize: Size(311.w, 50.w),
                    ),
                    onPressed: () {
                      Get.toNamed("/verifyotp");
                    },
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed("/login");
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/back.svg",
                            width: 10.w,
                            height: 10.h,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            "Already have an account? Login",
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
