import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_management/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          // theme: ThemeData(
          //   useMaterial3: true,
          // ),
          initialRoute: AppRoutes.splash,
          getPages: AppRoutes.getPages,
        );
      },
    );
  }
}
