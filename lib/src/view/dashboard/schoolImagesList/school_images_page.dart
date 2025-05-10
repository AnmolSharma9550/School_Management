import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/constants/app_strings.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class SchoolImagesPage extends StatelessWidget {
  const SchoolImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> images = [
      'https://media.istockphoto.com/id/1029795144/photo/young-female-student-in-the-park-stock-image.jpg?s=612x612&w=0&k=20&c=rsgiFYhDlhZ1aF7BC6iCRIlc8AXttYdFGyZMA8dmjvo=',
      'https://images.unsplash.com/photo-1524069290683-0457abfe42c3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwc2Nob29sc3xlbnwwfHwwfHx8MA%3D%3D',
      'https://images.unsplash.com/photo-1623303366639-0e330d7c3d9f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGluZGlhbiUyMHNjaG9vbHN8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1627135775457-9c001a0537bf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGluZGlhbiUyMHNjaG9vbHN8ZW58MHx8MHx8fDA%3D',
      'https://media.istockphoto.com/id/1343473005/photo/teacher-teaching-concepts-of-windmill-in-the-classroom-to-students.jpg?s=612x612&w=0&k=20&c=d7RSkirpJaj_nPq5_Qx3JTmPpQoRTpccXXEG2Dcpj6g=',
      'https://media.istockphoto.com/id/1028266408/photo/team-of-indian-university-students-doing-group-study-stock-image.jpg?s=612x612&w=0&k=20&c=Cv_CdHI41Ql-d21HgDK5B_9B2Bb2eNkEIV1S6TitFVE=',
      'https://media.istockphoto.com/id/1029795144/photo/young-female-student-in-the-park-stock-image.jpg?s=612x612&w=0&k=20&c=rsgiFYhDlhZ1aF7BC6iCRIlc8AXttYdFGyZMA8dmjvo=',
      'https://images.unsplash.com/photo-1524069290683-0457abfe42c3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwc2Nob29sc3xlbnwwfHwwfHx8MA%3D%3D',
      'https://images.unsplash.com/photo-1623303366639-0e330d7c3d9f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGluZGlhbiUyMHNjaG9vbHN8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1627135775457-9c001a0537bf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGluZGlhbiUyMHNjaG9vbHN8ZW58MHx8MHx8fDA%3D',
      'https://media.istockphoto.com/id/1343473005/photo/teacher-teaching-concepts-of-windmill-in-the-classroom-to-students.jpg?s=612x612&w=0&k=20&c=d7RSkirpJaj_nPq5_Qx3JTmPpQoRTpccXXEG2Dcpj6g=',
      'https://media.istockphoto.com/id/1028266408/photo/team-of-indian-university-students-doing-group-study-stock-image.jpg?s=612x612&w=0&k=20&c=Cv_CdHI41Ql-d21HgDK5B_9B2Bb2eNkEIV1S6TitFVE=',
    ];
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: AppBar(
        title: Text(
          AppStrings.schoolGallery,
          style: TextStyle(color: AppColors.appWhite),
        ),
        centerTitle: true,
        backgroundColor: AppColors.appPrimaryColor,
        iconTheme: IconThemeData(color: AppColors.appWhite),
      ),
      body: CustomFrontContainer(
        child: Padding(
          padding: EdgeInsets.all(AppSizer().deviceHeight1),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSizer().deviceHeight1,
                            vertical: AppSizer().deviceWidth2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
