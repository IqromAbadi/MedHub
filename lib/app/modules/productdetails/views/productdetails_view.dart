import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/productdetails_controller.dart';

class ProductdetailsView extends GetView<ProductdetailsController> {
  const ProductdetailsView({Key? key}) : super(key: key);

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
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/notif.svg",
                    width: 24.w,
                    height: 24.h,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/bag.svg",
                    width: 24.w,
                    height: 24.h,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sugar Free Gold Low Calories",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff090F47),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Etiam mollis metus non purus",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff090F47).withOpacity(0.45),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 140.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/product.png"),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff00A59B),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(width: 7.w),
                  Container(
                    width: 6.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff090F47).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(width: 7.w),
                  Container(
                    width: 6.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff090F47).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    height: 55,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rp 56.000",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff090F47),
                          ),
                        ),
                        Text(
                          "Etiam mollis",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 132,
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(
                            "assets/icons/addcart.svg",
                            width: 16.w,
                            height: 16.h,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Add to cart",
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
                ],
              ),
              SizedBox(height: 5.h),
              const Divider(),
              SizedBox(height: 5.h),
              Text(
                "Package size",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff090F47),
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Container(
                    width: 79.w,
                    height: 68.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff00A59B).withOpacity(0.05),
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                        color: const Color(0xff00A59B),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rp 252.000",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff00A59B),
                          ),
                        ),
                        Text(
                          "500 pellets",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff00A59B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 79.w,
                    height: 68.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rp 100.000",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47),
                          ),
                        ),
                        Text(
                          "110 pellets",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47).withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 79.w,
                    height: 68.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rp 160.000",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47),
                          ),
                        ),
                        Text(
                          "300 pellets",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47).withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                "Product Details",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff090F47),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Interdum et malesuada fames ac ante ipsum primis\nin faucibus. Morbi ut nisi odio. Nulla facilisi\n.Nunc risus massa, gravida id egestas a, pretium vel\ntellus. Praesent feugiat diam sit amet pulvinar\nfinibus. Etiam et nisi aliquet, accumsan nisi sit.",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff090F47).withOpacity(0.45),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    width: 120.w,
                    height: 100.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "4.4",
                              style: TextStyle(
                                fontFamily: "Overpass",
                                fontSize: 33.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Align(
                              alignment: Alignment.topRight,
                              child: SvgPicture.asset(
                                "assets/icons/star.svg",
                                width: 26.w,
                                height: 26.h,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "923 Ratings\nand 257 Reviews",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    width: 1.w,
                    height: 100.h,
                    color: Colors.black.withOpacity(0.10),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          SvgPicture.asset(
                            "assets/icons/starreview.svg",
                            width: 13.w,
                            height: 13.h,
                          ),
                          SizedBox(width: 5.w),
                          Stack(
                            children: [
                              Container(
                                width: 110.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.10),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              Container(
                                width: 90.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xff00A59B),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "67%",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "4",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          SvgPicture.asset(
                            "assets/icons/starreview.svg",
                            width: 13.w,
                            height: 13.h,
                          ),
                          SizedBox(width: 5.w),
                          Stack(
                            children: [
                              Container(
                                width: 110.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.10),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              Container(
                                width: 40.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xff00A59B),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "20%",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "3",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          SvgPicture.asset(
                            "assets/icons/starreview.svg",
                            width: 13.w,
                            height: 13.h,
                          ),
                          SizedBox(width: 5.w),
                          Stack(
                            children: [
                              Container(
                                width: 110.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.10),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              Container(
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xff00A59B),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "7%",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          SvgPicture.asset(
                            "assets/icons/starreview.svg",
                            width: 13.w,
                            height: 13.h,
                          ),
                          SizedBox(width: 5.w),
                          Stack(
                            children: [
                              Container(
                                width: 110.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.10),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              Container(
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xff00A59B),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "0%",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          SvgPicture.asset(
                            "assets/icons/starreview.svg",
                            width: 13.w,
                            height: 13.h,
                          ),
                          SizedBox(width: 5.w),
                          Stack(
                            children: [
                              Container(
                                width: 110.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.10),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              Container(
                                height: 3.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xff00A59B),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "2%",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff090F47).withOpacity(0.45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lorem Hoffman",
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47),
                    ),
                  ),
                  Text(
                    "05 August 2024",
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47).withOpacity(0.45),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/star.svg",
                    width: 12.w,
                    height: 12.h,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "4.2",
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff090F47).withOpacity(0.45),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                "Interdum et malesuada fames ac ante ipsum primi\nin faucibus. Morbi ut nisi odio. Nulla facilisi\n.Nunc risus massa, gravida id egestas",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff090F47).withOpacity(0.45),
                ),
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff090F47),
                  minimumSize: Size(311.w, 50.w),
                ),
                onPressed: () {
                  Get.toNamed("/cart");
                },
                child: Text(
                  "GO TO CART",
                  style: TextStyle(
                    fontFamily: "Overpass",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
