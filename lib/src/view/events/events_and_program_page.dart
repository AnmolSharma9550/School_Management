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
            'A sleepover is a great treat for kids.Many schools use such an event as the culminating activity of the school year. '
      },
      {
        "event": 'Fishing Tournament',
        "time": '12 Jan 21, 09:00 AM',
        "desc":
            'Silver Sands Middle School in Port Orange,Florida, offers many special events,but one of the most unique ones is a springtime...'
      },
      {
        "event": 'Rhyme Time: A Night of Poetry',
        "time": '24 Jan 21, 09:00 AM',
        "desc":
            'April is also National Poetry Month. Now there is a great theme for a fun family night!Combine poetry readings by students...'
      },
      {
        "event": 'Rhyme Time: A Night of Poetry',
        "time": '24 Jan 21, 09:00 AM',
        "desc":
            'April is also National Poetry Month. Now there is a great theme for a fun family night!Combine poetry readings by students...'
      },
      {
        "event": 'Rhyme Time: A Night of Poetry',
        "time": '24 Jan 21, 09:00 AM',
        "desc":
            'April is also National Poetry Month. Now there is a great theme for a fun family night!Combine poetry readings by students...'
      },
      {
        "event": 'Rhyme Time: A Night of Poetry',
        "time": '24 Jan 21, 09:00 AM',
        "desc":
            'April is also National Poetry Month. Now there is a great theme for a fun family night!Combine poetry readings by students...'
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
                      padding: EdgeInsets.all(AppSizer().deviceHeight2),
                      child: Container(
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
                              Padding(
                                padding:
                                    EdgeInsets.all(AppSizer().deviceHeight1),
                                child: Text(
                                  event['event'] ?? '',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppSizer().deviceSp15),
                                ),
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
                                  SizedBox(
                                    width: AppSizer().deviceWidth1,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          AppSizer().deviceHeight1),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            event['time'] ?? '',
                                            style: TextStyle(
                                                color:
                                                    AppColors.appPrimaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            event['desc'] ?? '',
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
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
