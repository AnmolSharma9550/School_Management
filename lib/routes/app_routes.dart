import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:school_management/src/view/askdoubt/askdoubt_page.dart';
import 'package:school_management/src/view/assignment/assignment_page.dart';
import 'package:school_management/src/view/attendance/attendance_page.dart';
import 'package:school_management/src/view/dashboard/dashboard_page.dart';
import 'package:school_management/src/view/dashboard/liveClassesList/live_classes_page.dart';
import 'package:school_management/src/view/dashboard/notification_page.dart';
import 'package:school_management/src/view/dashboard/profile_details_page.dart';
import 'package:school_management/src/view/dashboard/schoolImagesList/school_images_page.dart';
import 'package:school_management/src/view/datesheet/date_sheet_page.dart';
import 'package:school_management/src/view/events/events_and_program_page.dart';
import 'package:school_management/src/view/feedue/fee_due_page.dart';
import 'package:school_management/src/view/loginPages/forgot_password_page.dart';
import 'package:school_management/src/view/loginPages/login_page.dart';
import 'package:school_management/src/view/splash/splash_page.dart';
import 'package:school_management/src/view/timetable/time_table.dart';

class AppRoutes {
  static String splash = '/splash';
  static String login = '/login_page';
  static String forgotPassword = '/forgot_password';
  static String dashBoard = '/dashboard_page';
  static String notification = '/notification_page';
  static String profileDetails = '/profile_details_page';
  static String liveClasses = '/live_classes_page';
  static String schoolImages = '/school_images_page';
  static String attendance = '/attendance_page';
  static String feeDue = '/fee_due_page';
  static String assignment = '/assignment_page';
  static String timeTable = '/time_table';
  static String dateSheet = '/date_sheet_page';
  static String askDoubt = '/askdoubt_page';
  static String events = '/events_and_program_page';

  static final getPages = [
    GetPage(name: splash, page: () => SplashPage()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: forgotPassword, page: () => ForgotPasswordPage()),
    GetPage(name: dashBoard, page: () => DashboardPage()),
    GetPage(name: notification, page: () => NotificationPage()),
    GetPage(name: profileDetails, page: () => ProfileDetailsPage()),
    GetPage(name: liveClasses, page: () => LiveClassesPage()),
    GetPage(name: schoolImages, page: () => SchoolImagesPage()),
    GetPage(name: attendance, page: () => AttendancePage()),
    GetPage(name: feeDue, page: () => FeeDuePage()),
    GetPage(name: assignment, page: () => AssignmentPage()),
    GetPage(name: timeTable, page: () => TimeTable()),
    GetPage(name: dateSheet, page: () => DateSheetPage()),
    GetPage(name: askDoubt, page: () => AskdoubtPage()),
    GetPage(name: events, page: () => EventsAndProgramPage()),
  ];
}
