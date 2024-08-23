import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Diabetes Care",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/banner1.png"),
              SizedBox(height: 15.h),
              Text(
                'Diabetes Diet',
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff090F47),
                ),
              ),
              SizedBox(height: 15.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var item in controller.getDiabeticItems())
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: item,
                      ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                'All Products',
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff090F47),
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 150.w,
                        height: 250.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: const Color(0xffEBEBEB),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 145.w,
                              height: 154.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffF5F7FA),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.r),
                                  topRight: Radius.circular(10.r),
                                ),
                              ),
                              child: Center(
                                child: Container(
                                  width: 120.w,
                                  height: 120.h,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/allproduct1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15.w, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Accu-check Active\nTest Strip",
                                    style: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff091C3F),
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      Text(
                                        "Rp 112.000",
                                        style: TextStyle(
                                          fontFamily: "Overpass",
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff091C3F),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 48.w,
                                        height: 24.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff00A59B),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.r),
                                            bottomLeft: Radius.circular(20.r),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/star.svg",
                                              width: 13.w,
                                              height: 12.h,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              "4.2",
                                              style: TextStyle(
                                                fontFamily: "Overpass",
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/sale.png"),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 150.w,
                        height: 250.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: const Color(0xffEBEBEB),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 145.w,
                              height: 154.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffF5F7FA),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.r),
                                  topRight: Radius.circular(10.r),
                                ),
                              ),
                              child: Center(
                                child: Container(
                                  width: 120.w,
                                  height: 120.h,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/allproduct2.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15.w, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Omron HEM-8712\nBp Monitor",
                                    style: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff091C3F),
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      Text(
                                        "Rp 112.000",
                                        style: TextStyle(
                                          fontFamily: "Overpass",
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff091C3F),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 48.w,
                                        height: 24.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff00A59B),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.r),
                                            bottomLeft: Radius.circular(20.r),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/star.svg",
                                              width: 13.w,
                                              height: 12.h,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              "4.2",
                                              style: TextStyle(
                                                fontFamily: "Overpass",
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/off.png"),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: const Color(0xffEBEBEB),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 145.w,
                          height: 154.h,
                          decoration: BoxDecoration(
                            color: const Color(0xffF5F7FA),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.r),
                              topRight: Radius.circular(10.r),
                            ),
                          ),
                          child: Center(
                            child: Container(
                              width: 120.w,
                              height: 120.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/allproduct3.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.w, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Accu-check Active\nTest Strip",
                                style: TextStyle(
                                  fontFamily: "Overpass",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff091C3F),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text(
                                    "Rp 112.000",
                                    style: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff091C3F),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 48.w,
                                    height: 24.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff00A59B),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.r),
                                        bottomLeft: Radius.circular(20.r),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/star.svg",
                                          width: 13.w,
                                          height: 12.h,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          "4.2",
                                          style: TextStyle(
                                            fontFamily: "Overpass",
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: const Color(0xffEBEBEB),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 145.w,
                          height: 154.h,
                          decoration: BoxDecoration(
                            color: const Color(0xffF5F7FA),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.r),
                              topRight: Radius.circular(10.r),
                            ),
                          ),
                          child: Center(
                            child: Container(
                              width: 120.w,
                              height: 120.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/allproduct4.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.w, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Omron HEM-8712\nBp Monitor",
                                style: TextStyle(
                                  fontFamily: "Overpass",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff091C3F),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text(
                                    "Rp 112.000",
                                    style: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff091C3F),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 48.w,
                                    height: 24.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff00A59B),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.r),
                                        bottomLeft: Radius.circular(20.r),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/star.svg",
                                          width: 13.w,
                                          height: 12.h,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          "4.2",
                                          style: TextStyle(
                                            fontFamily: "Overpass",
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }
}
