import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medhub/app/modules/verifyotp/views/verifysucces_view.dart';
import '../controllers/verifyotp_controller.dart';

class VerifyotpView extends GetView<VerifyotpController> {
  const VerifyotpView({Key? key}) : super(key: key);

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter the verify code",
              style: TextStyle(
                fontFamily: "Overpass",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff090F47),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "We just sent you a verification code via\n+62 821 39 488 953",
              style: TextStyle(
                fontFamily: "Overpass",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff090F47).withOpacity(0.45),
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50.w,
                  child: TextFormField(
                    controller: controller.controllers[index],
                    focusNode: controller.focusNodes[index],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47).withOpacity(0.45),
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xff090F47).withOpacity(0.1),
                          width: 1.w,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xff090F47).withOpacity(0.1),
                          width: 1.w,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isEmpty) {
                        controller.handleBackspace(index);
                      }
                    },
                    onTap: () {
                      if (controller.controllers[index].text.isEmpty) {
                        controller.controllers[index].text = "";
                      }
                    },
                  ),
                );
              }),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff090F47),
                minimumSize: Size(double.infinity, 50.h),
              ),
              onPressed: () {
                Get.to(() => VerifysuccesView());
              },
              child: Text(
                "SUBMIT CODE",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffFFFFFF),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Column(
                children: [
                  Text(
                    "The verify code will expire in 00:59",
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47).withOpacity(0.45),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend code",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff00A59B),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
