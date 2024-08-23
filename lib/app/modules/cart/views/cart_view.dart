import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medhub/app/modules/home/views/home_view.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your cart",
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
            Get.to(() => const HomeView());
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
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/+.svg",
                              width: 12.w,
                              height: 12.h,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "Add more",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: const Color(0xff00A59B),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 322.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/product1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sugar free gold",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff090F47),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "bottle of 500 pellets",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff090F47)
                                        .withOpacity(0.45),
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                Text(
                                  "Rp 25.000",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff090F47),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/icons/x.svg",
                                        width: 20.w,
                                        height: 20.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                children: [
                                  Container(
                                    width: 92.w,
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffF1FFEA),
                                      borderRadius: BorderRadius.circular(16.h),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 32.w,
                                          height: 32.h,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff00A59B),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w,
                                                vertical: 10.w),
                                            child: SvgPicture.asset(
                                                "assets/icons/-.svg"),
                                          ),
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        Container(
                                          width: 32.w,
                                          height: 32.h,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff0F3759),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w,
                                                vertical: 10.w),
                                            child: SvgPicture.asset(
                                                "assets/icons/+.svg"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                    Container(
                      width: 322.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/product2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sugar free gold",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff090F47),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "bottle of 500 pellets",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff090F47)
                                        .withOpacity(0.45),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Text(
                                  "Rp 18.000",
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff090F47),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/icons/x.svg",
                                        width: 20.w,
                                        height: 20.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                children: [
                                  Container(
                                    width: 92.w,
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffF1FFEA),
                                      borderRadius: BorderRadius.circular(16.h),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 32.w,
                                          height: 32.h,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff00A59B),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w,
                                                vertical: 10.w),
                                            child: SvgPicture.asset(
                                                "assets/icons/-.svg"),
                                          ),
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        Container(
                                          width: 32.w,
                                          height: 32.h,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff0F3759),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w,
                                                vertical: 10.w),
                                            child: SvgPicture.asset(
                                                "assets/icons/+.svg"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                    Container(
                      width: 327.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                          color: const Color(0xffE0E0E0),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.w),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/coupon.svg",
                              width: 16.w,
                              height: 16.h,
                            ),
                            SizedBox(width: 20.w),
                            Text(
                              "1 Coupon Applied",
                              style: TextStyle(
                                fontFamily: "Overpass",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff00A59B),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icons/x.svg",
                                width: 20.w,
                                height: 20.h,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Payment Summary",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff090F47),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order Total",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
                        ),
                        Text(
                          "Rp 228.000",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Items Discount",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
                        ),
                        Text(
                          "- Rp 28.800",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Coupon Discount",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
                        ),
                        Text(
                          "- Rp 15.800",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
                        ),
                        Text(
                          "Free",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff090F47),
                          ),
                        ),
                        Text(
                          "Rp 185.000",
                          style: TextStyle(
                            fontFamily: "Overpass",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff090F47),
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
                  Get.toNamed("/checkout/succes");
                },
                child: Text(
                  "Place Order @ Rp 185.000",
                  style: TextStyle(
                    fontFamily: "Overpass",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
