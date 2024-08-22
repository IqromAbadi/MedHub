import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medhub/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  Get.put(OnboardingController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          home: child,
        );
      },
    );
  }
}
