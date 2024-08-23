import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  List<Widget> getDiabeticItems() {
    return [
      _getDiabeticItems(
        imagePath: "assets/images/diabetic1.png",
        title: "Sugar\nSubstitutes",
      ),
      _getDiabeticItems(
        imagePath: "assets/images/diabetic2.png",
        title: "Juices\nVinegars",
      ),
      _getDiabeticItems(
        imagePath: "assets/images/diabetic3.png",
        title: "Vitamins\nMedicines",
      ),
    ];
  }

  Widget _getDiabeticItems({
    required String imagePath,
    required String title,
  }) {
    return Container(
      width: 110.w,
      height: 162.h,
      decoration: BoxDecoration(
        color: Color(0xffF5F7FA),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Container(
            width: 110.w,
            height: 99.h,
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
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: "Overpass",
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff090F47),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
