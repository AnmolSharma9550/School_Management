import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management/routes/app_routes.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/constants/app_strings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> itmes = [
      'Attendance',
      'Fee Details',
      'Assignment',
      'Time Table',
      'Date Sheet',
      'Ask Doubts',
      'Events',
    ];
    return Drawer(
      backgroundColor: Color(0x802855AE),
      child: Padding(
        padding: EdgeInsets.all(AppSizer().deviceHeight2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: AppSizer().deviceHeight4,
              backgroundColor: AppColors.appBackgroundColor,
              child: Icon(
                Icons.person,
                size: AppSizer().deviceHeight5,
                color: AppColors.appWhite,
              ),
            ),
            SizedBox(height: AppSizer().deviceHeight1),
            Text(AppStrings.name,
                style: TextStyle(
                  fontSize: AppSizer().deviceSp15,
                  color: AppColors.appWhite,
                )),
            Text(AppStrings.email,
                style: TextStyle(
                  fontSize: AppSizer().deviceSp15,
                  color: AppColors.appWhite,
                )),
            Text(AppStrings.phone,
                style: TextStyle(
                  fontSize: AppSizer().deviceSp15,
                  color: AppColors.appWhite,
                )),
            Expanded(
              child: ListView.builder(
                  itemCount: itmes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.back();
                        switch (itmes[index]) {
                          case 'Attendance':
                            Get.toNamed(AppRoutes.attendance);
                            break;
                          case 'Fee Details':
                            Get.toNamed(AppRoutes.feeDue);
                            break;
                          case 'Assignment':
                            Get.toNamed(AppRoutes.assignment);
                            break;
                          case 'Time Table':
                            Get.toNamed(AppRoutes.timeTable);
                            break;
                          case 'Date Sheet':
                            Get.toNamed(AppRoutes.dateSheet);
                            break;
                          case 'Ask Doubts':
                            Get.toNamed(AppRoutes.askDoubt);
                            break;
                          case 'Events':
                            Get.toNamed(AppRoutes.events);
                            break;
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: AppSizer().deviceHeight1),
                        child: Container(
                          // height: AppSizer().deviceHeight6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: AppColors.gradientColor)),
                          child: Padding(
                            padding: EdgeInsets.all(AppSizer().deviceHeight2),
                            child: Center(
                              child: Text(
                                itmes[index],
                                style: TextStyle(color: AppColors.appWhite),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
