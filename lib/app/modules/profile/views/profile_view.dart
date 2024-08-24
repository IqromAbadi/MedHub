import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.find<ProfileController>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'My Profile',
            style: TextStyle(
              fontFamily: "Overpass",
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 75.w,
                    height: 75.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Lorem Ipsum",
                      style: TextStyle(
                          fontFamily: "Overpass",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff091C3F)),
                    ),
                    Text(
                      "Welcome to MedHub",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff091C3F).withOpacity(0.45),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.separated(
                itemCount: controller.items.length,
                separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Divider(
                    color: const Color(0xff091C3F).withOpacity(0.10),
                    thickness: 1.h,
                  ),
                ),
                itemBuilder: (context, index) {
                  final item = controller.items[index];
                  return Row(
                    children: [
                      SvgPicture.asset(
                        item['icon'],
                        width: 24.w,
                        height: 24.h,
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Text(
                                  item['text'],
                                  style: TextStyle(
                                    fontFamily: "Overpass",
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff091C3F)
                                        .withOpacity(0.75),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16.w,
                                    color: const Color(0xff091C3F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
