import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> timeTable = [
      {
        "subject": 'Computer Science',
        "time": '08:15am - 9:00am',
        "teacher": 'Cherise James',
        "period": 'Period 1',
      },
      {
        "subject": 'Mathematics ',
        "time": '09:00am - 09:45am',
        "teacher": 'Rivka Steadman',
        "period": 'Period 2',
      },
      {
        "subject": 'English',
        "time": '09:45am - 10:30am',
        "teacher": 'Marta Magana',
        "period": 'Period 3',
      },
      {
        "subject": 'Science',
        "time": '11:00am - 11:45am',
        "teacher": 'Danica Partridge',
        "period": 'Period 4',
      },
    ];
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        title: Text(
          'Time Table',
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
                    itemCount: timeTable.length,
                    itemBuilder: (context, index) {
                      final table = timeTable[index];
                      return Padding(
                        padding: EdgeInsets.all(AppSizer().deviceHeight2),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.circular(AppSizer().deviceSp16)),
                          child: Padding(
                            padding: EdgeInsets.all(AppSizer().deviceHeight2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  table['subject'] ?? '',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  table['time'] ?? '',
                                  style: TextStyle(
                                      color: AppColors.appBackgroundColor),
                                ),
                                Divider(),
                                Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      table['teacher'] ?? '',
                                      style: TextStyle(
                                          color: AppColors.appBackgroundColor),
                                    ),
                                    Text(
                                      table['period'] ?? '',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
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
