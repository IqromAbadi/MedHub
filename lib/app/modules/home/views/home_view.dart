import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medhub/app/modules/add/views/add_view.dart';
import 'package:medhub/app/modules/cart/views/cart_view.dart';
import 'package:medhub/app/modules/notification/views/notification_view.dart';
import 'package:medhub/app/modules/profile/views/profile_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.tabIndex.value,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/appbar.png",
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 35.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipOval(
                                  child: Container(
                                    width: 70.w,
                                    height: 70.h,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/person.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/icons/notif2.svg",
                                    width: 24.w,
                                    height: 24.h,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/icons/cart2.svg",
                                    width: 24.w,
                                    height: 24.h,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Hi Lorem Ipsum",
                              style: TextStyle(
                                fontFamily: "Overpass",
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Welcome to MedHub",
                              style: TextStyle(
                                fontFamily: "Overpass",
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(56.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2.h,
                                      blurRadius: 10.h,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText:
                                        "Search Medicine & Healthcare Products",
                                    hintStyle: TextStyle(
                                      fontFamily: "Overpass",
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.45),
                                    ),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w),
                                      child: SvgPicture.asset(
                                        "assets/icons/search.svg",
                                        width: 14.w,
                                        height: 14.h,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(56.r),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 230.h,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Top Categories",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff091C3F),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (var item in controller.getCategoryItems())
                                  Padding(
                                    padding: EdgeInsets.only(right: 20.w),
                                    child: item,
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Image.asset(
                            "assets/images/banner.png",
                            width: double.infinity.w,
                            height: 140.h,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Deals of the Day",
                                style: TextStyle(
                                  fontFamily: "Overpass",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff091C3F),
                                ),
                              ),
                              Text(
                                "More",
                                style: TextStyle(
                                  fontFamily: "Overpass",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff00A59B),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (var item
                                    in controller.getDealOfTheDayItems())
                                  Padding(
                                    padding: EdgeInsets.only(right: 20.w),
                                    child: item,
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Featured Brands",
                            style: TextStyle(
                              fontFamily: "Overpass",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff091C3F),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (var item
                                    in controller.getFutureBrandsItems())
                                  Padding(
                                    padding: EdgeInsets.only(right: 20.w),
                                    child: item,
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const NotificationView(),
            const AddView(),
            const CartView(),
            const ProfileView(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          items: controller.getBottomNavigationBarItems(),
        );
      }),
    );
  }
}
