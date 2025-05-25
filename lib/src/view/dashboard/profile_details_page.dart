import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/constants/app_strings.dart';
import 'package:school_management/src/controller/getImage/get_image_controller.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    GetImageController controller = Get.put(GetImageController());

    final List<String> profileList = [
      'Class 10 - B , Roll No. 02',
      'Father\'s Name : Mohit Joshi',
      'Mother\'s Name : Anita Joshi',
      'Communication Address : \n Sector 16 , Noida , Uttar Pradesh ',
      'Permanent Address : \n Sector 16 , Noida , Uttar Pradesh',
      'Other Details',
      'Other Details',
    ];
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
        backgroundColor: AppColors.appPrimaryColor,
        iconTheme: IconThemeData(color: AppColors.appWhite),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomFrontContainer(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizer().deviceWidth6,
                    vertical: AppSizer().deviceHeight2),
                child: Column(
                  children: [
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            Container(
                              height: AppSizer().deviceHeight30,
                              width: AppSizer().deviceWidth100,
                              decoration: BoxDecoration(
                                color: AppColors.appWhite,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.getImageFromCamera();
                                      Get.back();
                                    },
                                    child: Container(
                                        height: AppSizer().deviceHeight20,
                                        width: AppSizer().deviceWidth30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.camera_alt,
                                              size: AppSizer().deviceHeight5,
                                            ),
                                            SizedBox(
                                              height: AppSizer().deviceHeight1,
                                            ),
                                            Text(
                                              'Camera',
                                              style: TextStyle(
                                                  fontSize:
                                                      AppSizer().deviceSp14),
                                            ),
                                          ],
                                        )),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.getImageFromGallery();
                                      Get.back();
                                    },
                                    child: Container(
                                      height: AppSizer().deviceHeight20,
                                      width: AppSizer().deviceWidth30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.photo,
                                            size: AppSizer().deviceHeight5,
                                          ),
                                          SizedBox(
                                            height: AppSizer().deviceHeight1,
                                          ),
                                          Text(
                                            'Gallery',
                                            style: TextStyle(
                                                fontSize:
                                                    AppSizer().deviceSp14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: AppSizer().deviceHeight8,
                          backgroundColor: AppColors.lightBlue,
                          backgroundImage: controller.imagePath.isNotEmpty
                              ? FileImage(File(controller.imagePath.value))
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(height: AppSizer().deviceHeight1),
                    Text(
                      AppStrings.name,
                      style: TextStyle(fontSize: AppSizer().deviceSp16),
                    ),
                    Text(
                      AppStrings.email,
                      style: TextStyle(fontSize: AppSizer().deviceSp16),
                    ),
                    Text(
                      AppStrings.phone,
                      style: TextStyle(fontSize: AppSizer().deviceSp16),
                    ),
                    SizedBox(
                      height: AppSizer().deviceHeight2,
                    ),
                    Padding(
                      padding: EdgeInsets.all(AppSizer().deviceHeight1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // height: AppSizer().deviceHeight12,
                            width: AppSizer().deviceWidth36,
                            decoration: BoxDecoration(
                              color: AppColors.lightBlue,
                              border: Border.all(color: AppColors.appBlack),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                              child: Padding(
                                padding:
                                    EdgeInsets.all(AppSizer().deviceHeight4),
                                child: Text(AppStrings.attendanceDetails),
                              ),
                            ),
                          ),
                          Container(
                            // height: AppSizer().deviceHeight12,
                            // width: AppSizer().deviceWidth36,
                            decoration: BoxDecoration(
                              color: AppColors.lightBlue,
                              border: Border.all(color: AppColors.appBlack),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                              child: Padding(
                                padding:
                                    EdgeInsets.all(AppSizer().deviceHeight4),
                                child: Text(AppStrings.scoreDetails),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: profileList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(AppSizer().deviceHeight1),
                            child: Container(
                              // height: AppSizer().deviceHeight6,
                              width: AppSizer().deviceWidth100,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Center(
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(AppSizer().deviceHeight2),
                                  child: Text(
                                    profileList[index],
                                    style: TextStyle(
                                        fontSize: AppSizer().deviceSp14),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
