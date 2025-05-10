import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class FeeDuePage extends StatelessWidget {
  const FeeDuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: AppBar(
        title: Text(
          'Fees Due',
          style: TextStyle(color: AppColors.appWhite),
        ),
        backgroundColor: AppColors.appPrimaryColor,
        iconTheme: IconThemeData(color: AppColors.appWhite),
      ),
      body: CustomFrontContainer(
        child: Padding(
          padding: EdgeInsets.all(AppSizer().deviceHeight1),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(AppSizer().deviceHeight1),
                        child: Container(
                          height: AppSizer().deviceHeight22,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.circular(AppSizer().deviceSp16)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.all(AppSizer().deviceHeight2),
                                child: Column(
                                  children: [
                                    Flex(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      direction: Axis.horizontal,
                                      children: [
                                        Text('Receipt No.'),
                                        Text('#132123'),
                                      ],
                                    ),
                                    Divider(),
                                    Flex(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      direction: Axis.horizontal,
                                      children: [
                                        Text('Month \nPayment Date'),
                                        Text('October \n10 oct 20'),
                                      ],
                                    ),
                                    Divider(),
                                    Flex(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      direction: Axis.horizontal,
                                      children: [
                                        Text('Total Pending Amount'),
                                        Text('₹999'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.appPrimaryColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        AppSizer().deviceHeight11),
                                    bottomRight: Radius.circular(
                                        AppSizer().deviceHeight11),
                                  ),
                                ),
                                child: Text(
                                  'PAY NOW ->',
                                  style: TextStyle(
                                      color: AppColors.appWhite,
                                      fontSize: AppSizer().deviceSp15),
                                ),
                              ),
                            ],
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
