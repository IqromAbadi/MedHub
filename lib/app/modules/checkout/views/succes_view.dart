import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SuccesView extends GetView {
  const SuccesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Thank You",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff090F47),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontFamily: "Overpass",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff090F47).withOpacity(0.45),
                        ),
                        children: const [
                          TextSpan(
                            text: "Your Order will be delivered with invoice ",
                          ),
                          TextSpan(
                            text: "#INV20240817",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff090F47),
                            ),
                          ),
                          TextSpan(
                            text:
                                ". You can track the delivery\nin the order section.",
                          ),
                        ],
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
                Get.offAllNamed("/home");
              },
              child: Text(
                "Continue Order",
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
