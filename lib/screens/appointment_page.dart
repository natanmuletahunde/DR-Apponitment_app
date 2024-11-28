import 'package:flutter/material.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    // in this appointment page
    // there are 3 status  ,upcoming, complete and cancel
    // so need to create 3 status tabs for filtering Appointments status 
    return const Center(
      child: Text('Appointment page'),
    );
  }
}