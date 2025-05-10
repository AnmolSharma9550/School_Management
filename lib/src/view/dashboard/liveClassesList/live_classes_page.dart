import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/constants/app_strings.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class LiveClassesPage extends StatelessWidget {
  const LiveClassesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> liveClasses = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0vPXgSjItoLWgPMQ66mVPsnvUx-r3CyRdaw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfFYTRHMpiZDCUWKRoXYPQAxz7FuWXy6lHAA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSijmdnyCOcemwlGz0wR9TGgEX1ncRei_1qqA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuN97FIR7CCrjJ2q41UNiW3D1wWfqXFzIAwg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1FPvUeqjbTPIQHnj6SJn3UAR2cRR3f0nOUw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvf92T4RPdiZzeQtM4BNFGOvM2SnUiTXaF8w&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0vPXgSjItoLWgPMQ66mVPsnvUx-r3CyRdaw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfFYTRHMpiZDCUWKRoXYPQAxz7FuWXy6lHAA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSijmdnyCOcemwlGz0wR9TGgEX1ncRei_1qqA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuN97FIR7CCrjJ2q41UNiW3D1wWfqXFzIAwg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1FPvUeqjbTPIQHnj6SJn3UAR2cRR3f0nOUw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvf92T4RPdiZzeQtM4BNFGOvM2SnUiTXaF8w&s',
    ];
    return Scaffold(
        backgroundColor: AppColors.appPrimaryColor,
        appBar: AppBar(
          title: Text(
            AppStrings.liveClasses,
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
                      itemCount: liveClasses.length,
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
                              liveClasses[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
