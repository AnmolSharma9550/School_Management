import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/constants/app_strings.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appPrimaryColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
              )),
          elevation: 0,
          title: const Text(
            AppStrings.notification,
            style: TextStyle(color: AppColors.appWhite),
          ),
          centerTitle: true,
          backgroundColor: AppColors.appPrimaryColor,
          iconTheme: IconThemeData(color: AppColors.appWhite),
        ),
        body: CustomFrontContainer(
          height: AppSizer().deviceHeight100,
          child: Padding(
            padding: EdgeInsets.all(AppSizer().deviceHeight1),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('${AppStrings.notification} $index'),
                          subtitle: Text(
                              'This is the details of notification $index'),
                          leading: Icon(Icons.notifications),
                          trailing: Icon(Icons.arrow_forward_ios),
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
