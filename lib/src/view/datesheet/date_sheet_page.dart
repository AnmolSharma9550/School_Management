import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class DateSheetPage extends StatelessWidget {
  const DateSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> myList = [
      {
        'date': '11 \nJan',
        'subject': 'Science',
        'day': 'Monday',
        'time': 'time',
      },
      {
        'date': '13 \nJan',
        'subject': 'English',
        'day': 'Wednesday',
        'time': 'time',
      },
      {
        'date': '15 \nJan',
        'subject': 'English',
        'day': 'Wednesday',
        'time': 'time',
      },
      {
        'date': '18 \nJan',
        'subject': 'Hindi',
        'day': 'Friday',
        'time': 'time',
      },
      {
        'date': '20 \nJan',
        'subject': 'Math',
        'day': 'Monday',
        'time': 'time',
      },
      {
        'date': '22 \nJan',
        'subject': 'Social Study',
        'day': 'Wednesday',
        'time': 'time',
      },
      {
        'date': '18 \nJan',
        'subject': 'Drawing',
        'day': 'Friday',
        'time': 'time',
      },
      {
        'date': '20 \nJan',
        'subject': 'Computer',
        'day': 'Monday',
        'time': 'time',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        title: Text(
          'Datesheet',
          style: TextStyle(color: AppColors.appWhite),
        ),
        iconTheme: IconThemeData(color: AppColors.appWhite),
      ),
      body: CustomFrontContainer(
        child: Padding(
          padding: EdgeInsets.all(AppSizer().deviceHeight2),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    final item = myList[index];
                    return ListTile(
                      leading: Text(
                        item['date'] ?? '',
                        style: TextStyle(fontSize: AppSizer().deviceSp16),
                      ),
                      title: Text(
                        item['subject'] ?? '',
                        style: TextStyle(fontSize: AppSizer().deviceSp16),
                      ),
                      subtitle: Text(
                        item['day'] ?? '',
                        style: TextStyle(color: AppColors.appBackgroundColor),
                      ),
                      trailing: Text(
                        item['time'] ?? '',
                        style: TextStyle(color: AppColors.appBackgroundColor),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
