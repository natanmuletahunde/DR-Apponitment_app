import 'package:drappointment/screens/auth_page.dart';
import 'package:drappointment/screens/booking_page.dart';
import 'package:drappointment/screens/doctor_details.dart';
import 'package:drappointment/screens/success.booked.dart';
import 'package:drappointment/utils/config.dart';
import 'package:drappointment/utils/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorKey =
      GlobalKey<NavigatorState>(); // used for managing the route of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Fixed: Added value for debugShowCheckedModeBanner
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        // pre-defined input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlineBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlineBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),

        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
        'doc_details': (context) => const DoctorDetails(),
        'booking_page': (context) => const BookingPage(),
       'success_booking': (context) => const AppointmentBooked(), // Ensure this is correct
      },
    );
  }
}
