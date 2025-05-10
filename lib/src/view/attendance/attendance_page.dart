import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/widgets/custom_front_container.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  bool isAttendanceSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: AppColors.appPrimaryColor,
          centerTitle: true,
          title: ToggleButtons(
            isSelected: [isAttendanceSelected, !isAttendanceSelected],
            onPressed: (index) {
              setState(() {
                isAttendanceSelected = index == 0;
              });
            },
            borderRadius: BorderRadius.circular(50),
            selectedColor: AppColors.appPrimaryColor,
            fillColor: Colors.white,
            color: Colors.white,
            constraints: const BoxConstraints(minHeight: 36, minWidth: 100),
            children: const [
              Text(
                "Attendance",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Holiday",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          elevation: 0,
        ),
      ),
      body: CustomFrontContainer(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                calendarStyle: CalendarStyle(
                  todayDecoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: isAttendanceSelected ? Colors.green : Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                isAttendanceSelected
                    ? 'Marking as Attendance'
                    : 'Marking as Holiday',
                style: TextStyle(
                  fontSize: 16,
                  color: isAttendanceSelected ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
