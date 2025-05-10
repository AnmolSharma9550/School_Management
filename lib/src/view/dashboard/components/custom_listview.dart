import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_sizer.dart';

class CustomListView extends StatelessWidget {
  final List<String> item;
  const CustomListView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(AppSizer().deviceHeight1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.network(
                item[index],
                fit: BoxFit.cover,
                width: AppSizer().deviceWidth30,
                height: AppSizer().deviceHeight2,
              ),
            ),
          );
        });
  }
}
