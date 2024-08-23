import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  List<Widget> getCategoryItems() {
    return [
      _categoryItem(
        imagePath: "assets/images/dental.svg",
        iconPath: "assets/icons/dental.svg",
        label: "Dental",
      ),
      _categoryItem(
        imagePath: "assets/images/wellness.svg",
        iconPath: "assets/icons/wellness.svg",
        label: "Wellness",
      ),
      _categoryItem(
        imagePath: "assets/images/homeo.svg",
        iconPath: "assets/icons/homeo.svg",
        label: "Homeo",
      ),
      _categoryItem(
        imagePath: "assets/images/eyecare.svg",
        iconPath: "assets/icons/eyecare.svg",
        label: "Eye Care",
      ),
      _categoryItem(
        imagePath: "assets/images/skin.svg",
        iconPath: "assets/icons/skin.svg",
        label: "Skin & Hair",
      ),
    ];
  }

  Widget _categoryItem({
    required String imagePath,
    required String iconPath,
    required String label,
  }) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              width: 48.w,
              height: 48.h,
            ),
            Center(
              child: SvgPicture.asset(
                iconPath,
                width: 16.w,
                height: 16.h,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Text(
          label,
          style: TextStyle(
            fontFamily: "Overpass",
            fontSize: 11.sp,
            fontWeight: FontWeight.w300,
            color: const Color(0xff091C3F),
          ),
        ),
      ],
    );
  }

  List<Widget> getDealOfTheDayItems() {
    return [
      _dealOfTheDayItem(
        imagePath: "assets/images/product3.png",
        title: "Accu-Chek Active",
        subtitle: "Test Strips",
        price: "Rp 112.000",
        rating: "4.5",
      ),
      _dealOfTheDayItem(
        imagePath: "assets/images/product4.png",
        title: "Omron HEM 8712",
        subtitle: "Bp Monitor",
        price: "Rp 112.000",
        rating: "4.2",
      ),
    ];
  }

  Widget _dealOfTheDayItem({
    required String imagePath,
    required String title,
    required String subtitle,
    required String price,
    required String rating,
  }) {
    return Container(
      width: 180.w,
      height: 250.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Container(
            width: 180.w,
            height: 154.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.w, left: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: "Overpass",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff091C3F),
                  ),
                ),
                Text(
                  subtitle,
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
                      price,
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            width: 13.w,
                            height: 12.h,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            rating,
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
    );
  }

  List<Widget> getFutureBrandsItems() {
    return [
      _futureBrandItem(
        imagePath: "assets/images/himalaya.png",
        label: "Himalaya",
      ),
      _futureBrandItem(
        imagePath: "assets/images/accu.png",
        label: "Accu-Check",
      ),
      _futureBrandItem(
        imagePath: "assets/images/vlcc.png",
        label: "vlcc",
      ),
      _futureBrandItem(
        imagePath: "assets/images/protinex.png",
        label: "Protinex",
      ),
    ];
  }

  Widget _futureBrandItem({
    required String imagePath,
    required String label,
  }) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.contain,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              label,
              style: TextStyle(
                fontFamily: "Overpass",
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff091C3F),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }

  List<BottomNavigationBarItem> getBottomNavigationBarItems() {
    return [
      _bottomNavigationBarItem(
        label: 'Home',
        iconPath: "assets/icons/home.svg",
        isSelected: tabIndex.value == 0,
      ),
      _bottomNavigationBarItem(
        label: 'Notif',
        iconPath: "assets/icons/notif.svg",
        isSelected: tabIndex.value == 1,
      ),
      _bottomNavigationBarItem(
        label: 'Add',
        iconPath: "assets/icons/+product.svg",
        isSelected: tabIndex.value == 2,
        isSpecial: true,
      ),
      _bottomNavigationBarItem(
        label: 'Cart',
        iconPath: "assets/icons/cart.svg",
        isSelected: tabIndex.value == 3,
      ),
      _bottomNavigationBarItem(
        label: 'Profile',
        iconPath: "assets/icons/profile.svg",
        isSelected: tabIndex.value == 4,
      ),
    ];
  }

  BottomNavigationBarItem _bottomNavigationBarItem({
    required String label,
    required String iconPath,
    required bool isSelected,
    bool isSpecial = false,
  }) {
    return BottomNavigationBarItem(
      icon: isSpecial
          ? Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xff0F3759)
                    : const Color(0xff0F3759),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: SvgPicture.asset(
                  iconPath,
                  width: 16.w,
                  height: 16.h,
                  colorFilter: isSelected
                      ? const ColorFilter.mode(
                          Color(0xff00A59B), BlendMode.srcIn)
                      : null,
                ),
              ),
            )
          : SvgPicture.asset(
              iconPath,
              width: 16.w,
              height: 16.h,
              colorFilter: isSelected
                  ? const ColorFilter.mode(Color(0xff00A59B), BlendMode.srcIn)
                  : null,
            ),
      label: label,
    );
  }
}
