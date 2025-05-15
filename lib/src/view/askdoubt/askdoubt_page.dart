import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/controller/askdoubt/askdoubt_controller.dart';
import 'package:school_management/src/view/loginPages/components/custom_button.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class AskdoubtPage extends StatelessWidget {
  const AskdoubtPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AskDoubtController());
    final List<String> teacherList = [
      'Alexa Clarke',
      'Michael Clarke',
      'John Snow',
      'Stephen',
      'Stark',
    ];

    final List<String> subjectList = [
      'Maths',
      'Hindi',
      'English',
      'Science',
      'Social Science',
    ];

    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        title: Text(
          'Ask Doubt',
          style: TextStyle(color: AppColors.appWhite),
        ),
        iconTheme: IconThemeData(color: AppColors.appWhite),
      ),
      body: CustomFrontContainer(
        // width: AppSizer().deviceWidth100,
        height: AppSizer().deviceHeight100,
        child: Padding(
          padding: EdgeInsets.all(AppSizer().deviceHeight3),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select Teacher',
                      style: TextStyle(
                        color: AppColors.appBackgroundColor,
                      )),
                  Obx(
                    () => Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: AppColors.appBackgroundColor,
                      ),
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(),
                          value: controller.selectedTeacher?.value == ''
                              ? null
                              : controller.selectedTeacher?.value,
                          hint: Text('Choose a teacher'),
                          items: teacherList
                              .map((teacher) => DropdownMenuItem(
                                    child: Text(teacher),
                                    value: teacher,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            controller.setSelectedTeacher(value);
                          }),
                    ),
                  ),
                  SizedBox(
                    height: AppSizer().deviceHeight3,
                  ),
                  Text(
                    'Select Subject',
                    style: TextStyle(color: AppColors.appBackgroundColor),
                  ),
                  Obx(
                    () => Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: AppColors.appBackgroundColor,
                      ),
                      child: DropdownButtonFormField(
                          value: controller.selectedSubject?.value == ''
                              ? null
                              : controller.selectedSubject?.value,
                          hint: Text('Choose a Subject'),
                          items: subjectList
                              .map((subject) => DropdownMenuItem(
                                    child: Text(subject),
                                    value: subject,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            controller.setSelectedSubject(value);
                          }),
                    ),
                  ),
                  SizedBox(
                    height: AppSizer().deviceHeight3,
                  ),
                  Text('Title',
                      style: TextStyle(color: AppColors.appBackgroundColor)),
                  TextField(),
                  SizedBox(
                    height: AppSizer().deviceHeight3,
                  ),
                  Text('Doubt Description',
                      style: TextStyle(color: AppColors.appBackgroundColor)),
                  TextField(),
                  SizedBox(
                    height: AppSizer().deviceHeight8,
                  ),
                  CustomButton(
                      text: 'SEND',
                      onPressed: () {},
                      gradient:
                          LinearGradient(colors: AppColors.gradientColor)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
