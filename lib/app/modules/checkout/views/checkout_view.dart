import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medhub/app/modules/checkout/views/succes_view.dart';
import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
            fontFamily: "Overpass",
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff090F47),
          ),
        ),
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2 items in your cart",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "TOTAL",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w300,
                                color:
                                    const Color(0xff090F47).withOpacity(0.45),
                              ),
                            ),
                            Text(
                              "Rp. 185.000",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff090F47),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Delivery Address",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff090F47),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: double.infinity,
                      height: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.w),
                        border: Border.all(
                          color: const Color(0xff090F47).withOpacity(0.10),
                          width: 1.w,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 18.w,
                              height: 18.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xff00A59B),
                                  width: 1.w,
                                ),
                              ),
                              child: Center(
                                child: Container(
                                  width: 12.w,
                                  height: 12.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff00A59B),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                          fontFamily: "Overpass",
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff090F47),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "(031) 555-024",
                                    style: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.45),
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "Jl. Rajawali No. 02, Surabaya",
                                    style: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.45),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/icons/edit.svg",
                              width: 16.w,
                              height: 16.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: double.infinity,
                      height: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.w),
                        border: Border.all(
                          color: const Color(0xff090F47).withOpacity(0.10),
                          width: 1.w,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 18.w,
                              height: 18.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      const Color(0xff090F47).withOpacity(0.15),
                                  width: 1.w,
                                ),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Office",
                                        style: TextStyle(
                                          fontFamily: "Overpass",
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff090F47),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "(031) 555-024",
                                    style: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.45),
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "Jl. GajahMada No. 05, Sidoarjo",
                                    style: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.45),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/icons/edit.svg",
                              width: 16.w,
                              height: 16.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100.w,
                          height: 20.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/+.svg",
                                width: 12.w,
                                height: 12.h,
                              ),
                              Text(
                                "Add Address",
                                style: TextStyle(
                                  fontFamily: "Overpass",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff00A59B),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff090F47),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: double.infinity.w,
                      height: 252.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.w),
                        border: Border.all(
                          color: const Color(0xff090F47).withOpacity(0.10),
                          width: 1.w,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 16.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6.w),
                                    border: Border.all(
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.10),
                                      width: 1.w,
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.w, vertical: 2.h),
                                      child: Image.asset(
                                        "assets/images/ovo.png",
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  "OVO",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff090F47),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 18.w,
                                  height: 18.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xff00A59B),
                                      width: 1.w,
                                    ),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 12.w,
                                      height: 12.w,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff00A59B),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6.w),
                                    border: Border.all(
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.10),
                                      width: 1.w,
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.w, vertical: 2.h),
                                      child: Image.asset(
                                        "assets/images/dana.png",
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  "Dana",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff090F47),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 18.w,
                                  height: 18.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.25),
                                      width: 1.w,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6.w),
                                    border: Border.all(
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.10),
                                      width: 1.w,
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.w, vertical: 2.h),
                                      child: Image.asset(
                                        "assets/images/shopeepay.png",
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  "ShopeePay",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff090F47),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 18.w,
                                  height: 18.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.25),
                                      width: 1.w,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6.w),
                                    border: Border.all(
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.10),
                                      width: 1.w,
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.w, vertical: 2.h),
                                      child: Image.asset(
                                        "assets/images/GoPay.png",
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  "GoPay",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff090F47),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 18.w,
                                  height: 18.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.25),
                                      width: 1.w,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.w),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff090F47),
                          minimumSize: Size(311.w, 50.w),
                        ),
                        onPressed: () {
                          Get.to(() => const SuccesView());
                        },
                        child: Text(
                          "Pay Now Rp. 185.000",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
