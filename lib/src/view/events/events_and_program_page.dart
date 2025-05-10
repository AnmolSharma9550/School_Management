import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class EventsAndProgramPage extends StatelessWidget {
  const EventsAndProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> events = [
      {
        "event": 'Sleepover Night',
        "time": '06 Jan 21, 09:00 AM',
        "desc":
            'A sleepover is a great treat for kids.\nMany schools use such an event as \nthe culminating activity of the \nschool year. '
      },
      {
        "event": 'Fishing Tournament',
        "time": '12 Jan 21, 09:00 AM',
        "desc":
            'Silver Sands Middle School in Port \nOrange,Florida, offers many special \nevents,but one of the most \nunique ones is a springtime...'
      },
      {
        "event": 'Rhyme Time: A Night of Poetry',
        "time": '24 Jan 21, 09:00 AM',
        "desc":
            'April is also National Poetry Month. \nNow there is a great theme for a \nfun family night!\nCombine poetry readings by students...'
      }
    ];

    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: AppBar(
        title: Text(
          'Events & Program',
          style: TextStyle(color: AppColors.appWhite),
        ),
        backgroundColor: AppColors.appPrimaryColor,
        iconTheme: IconThemeData(color: AppColors.appWhite),
      ),
      body: CustomFrontContainer(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: AppSizer().deviceHeight16,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(AppSizer().deviceHeight1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                event['event'] ?? '',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppSizer().deviceSp15),
                              ),
                              Flex(
                                direction: Axis.horizontal,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: AppSizer().deviceHeight10,
                                    width: AppSizer().deviceHeight10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: AppColors.lightBlue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSizer().deviceHeight1),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          event['time'] ?? '',
                                          style: TextStyle(
                                              color: AppColors.appPrimaryColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(event['desc'] ?? ''),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
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
