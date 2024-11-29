import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';


class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
 CalendarFormat _format = CalendarFormat.month;
 DateTime _focusDay = DateTime.now();
 int? _currentIndex ;
 bool _isWeekend = false;
 bool _dateSelected = false;
 bool _timeSelected = false;
  // declaration 
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}