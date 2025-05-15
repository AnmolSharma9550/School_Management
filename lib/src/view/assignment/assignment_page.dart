import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/view/loginPages/components/custom_button.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class AssignmentPage extends StatelessWidget {
  const AssignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        title: Text(
          'Assignment',
          style: TextStyle(color: AppColors.appWhite),
        ),
        iconTheme: IconThemeData(color: AppColors.appWhite),
      ),
      body: CustomFrontContainer(
        child: Padding(
          padding: EdgeInsets.all(AppSizer().deviceHeight1),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(AppSizer().deviceHeight2),
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(
                                    AppSizer().deviceSp16)),
                            child: Padding(
                              padding: EdgeInsets.all(AppSizer().deviceHeight2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: AppSizer().deviceWidth26,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightBlue,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'Subject',
                                      style: TextStyle(
                                          color: AppColors.appPrimaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppSizer().deviceSp16),
                                    ),
                                  ),
                                  SizedBox(
                                    height: AppSizer().deviceHeight1,
                                  ),
                                  Text(
                                    'Surface Area and Volume',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: AppSizer().deviceHeight1,
                                  ),
                                  Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Assign Date',
                                        style: TextStyle(
                                            color:
                                                AppColors.appBackgroundColor),
                                      ),
                                      Text(
                                        '10 Nov 20',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Last Submission Date',
                                        style: TextStyle(
                                            color:
                                                AppColors.appBackgroundColor),
                                      ),
                                      Text(
                                        '10 Dec 20',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppSizer().deviceHeight1,
                                  ),
                                  CustomButton(
                                      text: 'To Be Submitted',
                                      onPressed: () {},
                                      gradient: LinearGradient(
                                          colors: AppColors.gradientColor))
                                ],
                              ),
                            )),
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
