import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management/routes/app_routes.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/constants/app_strings.dart';
import 'package:school_management/src/view/dashboard/components/custom_listview.dart';
import 'package:school_management/src/view/dashboard/components/custom_row.dart';
import 'package:school_management/widgets/custom_front_container.dart';
import 'package:school_management/widgets/mydrawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> liveClasses = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0vPXgSjItoLWgPMQ66mVPsnvUx-r3CyRdaw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfFYTRHMpiZDCUWKRoXYPQAxz7FuWXy6lHAA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSijmdnyCOcemwlGz0wR9TGgEX1ncRei_1qqA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuN97FIR7CCrjJ2q41UNiW3D1wWfqXFzIAwg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1FPvUeqjbTPIQHnj6SJn3UAR2cRR3f0nOUw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvf92T4RPdiZzeQtM4BNFGOvM2SnUiTXaF8w&s',
    ];

    final List<String> images = [
      'https://media.istockphoto.com/id/1029795144/photo/young-female-student-in-the-park-stock-image.jpg?s=612x612&w=0&k=20&c=rsgiFYhDlhZ1aF7BC6iCRIlc8AXttYdFGyZMA8dmjvo=',
      'https://images.unsplash.com/photo-1524069290683-0457abfe42c3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwc2Nob29sc3xlbnwwfHwwfHx8MA%3D%3D',
      'https://images.unsplash.com/photo-1623303366639-0e330d7c3d9f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGluZGlhbiUyMHNjaG9vbHN8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1627135775457-9c001a0537bf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGluZGlhbiUyMHNjaG9vbHN8ZW58MHx8MHx8fDA%3D',
      'https://media.istockphoto.com/id/1343473005/photo/teacher-teaching-concepts-of-windmill-in-the-classroom-to-students.jpg?s=612x612&w=0&k=20&c=d7RSkirpJaj_nPq5_Qx3JTmPpQoRTpccXXEG2Dcpj6g=',
      'https://media.istockphoto.com/id/1028266408/photo/team-of-indian-university-students-doing-group-study-stock-image.jpg?s=612x612&w=0&k=20&c=Cv_CdHI41Ql-d21HgDK5B_9B2Bb2eNkEIV1S6TitFVE='
    ];

    return Scaffold(
        backgroundColor: AppColors.appPrimaryColor,
        drawer: MyDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.appPrimaryColor,
          actions: [
            IconButton(
              icon: const Icon(Icons.notification_add_outlined),
              onPressed: () {
                Get.toNamed(AppRoutes.notification);
              },
            ),
            IconButton(
              icon: Icon(Icons.person_2_outlined),
              onPressed: () {
                Get.toNamed(AppRoutes.profileDetails);
              },
            )
          ],
          iconTheme: IconThemeData(
            color: AppColors.appWhite,
            size: AppSizer().deviceHeight3,
          ),
        ),
        body: CustomFrontContainer(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: AppSizer().deviceHeight2),
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppSizer().deviceWidth4),
                child: Column(
                  children: [
                    SizedBox(
                      height: AppSizer().deviceHeight20,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: Image.network(
                                  images[index],
                                  fit: BoxFit.cover,
                                  width: AppSizer().deviceWidth90,
                                  height: AppSizer().deviceHeight2,
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: AppSizer().deviceHeight2,
                    ),
                    CustomRow(
                      text: AppStrings.liveClasses,
                      btntext: AppStrings.seeAll,
                      onTap: () => Get.toNamed(AppRoutes.liveClasses),
                    ),
                    SizedBox(
                      height: AppSizer().deviceHeight2,
                    ),
                    SizedBox(
                        height: AppSizer().deviceHeight14,
                        child: CustomListView(item: liveClasses)),
                    SizedBox(
                      height: AppSizer().deviceHeight2,
                    ),
                    CustomRow(
                      text: AppStrings.schoolGallery,
                      btntext: AppStrings.seeAll,
                      onTap: () => Get.toNamed(AppRoutes.schoolImages),
                    ),
                    SizedBox(
                      height: AppSizer().deviceHeight2,
                    ),
                    SizedBox(
                        height: AppSizer().deviceHeight14,
                        child: CustomListView(item: images)),
                    SizedBox(
                      height: AppSizer().deviceHeight2,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.allClasses,
                        style: TextStyle(
                          color: AppColors.appBlack,
                          fontSize: AppSizer().deviceSp16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppSizer().deviceHeight2,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: liveClasses.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          childAspectRatio: 3 / 2,
                        ),
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.network(
                              liveClasses[index],
                              fit: BoxFit.cover,
                              width: AppSizer().deviceWidth40,
                              height: AppSizer().deviceHeight10,
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
