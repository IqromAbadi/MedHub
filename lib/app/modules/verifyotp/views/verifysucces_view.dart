import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class VerifysuccesView extends GetView {
  const VerifysuccesView({Key? key}) : super(key: key);

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
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/cheklis.svg",
                      width: 245.h,
                      height: 195.h,
                    ),
                    SizedBox(height: 20.h),
                    const Text(
                      "Phone Number Verified",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff090F47),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Congratulations, your phone number has been verified. You can start using the app",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff090F47).withOpacity(0.45),
                      ),
                    ),
                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff090F47),
                minimumSize: Size(311.w, 50.w),
              ),
              onPressed: () {
                Get.offAllNamed('/home');
              },
              child: Text(
                "CONTINUE",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
