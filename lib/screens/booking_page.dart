import 'package:drappointment/components/custom_appbar.dart';
import 'package:drappointment/utils/config.dart';
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
  int? _currentIndex;
  bool _isWeekend = false;
  bool _dateSelected = false;
  bool _timeSelected = false;

  @override
  Widget build(BuildContext context) {
    Config.init(context);
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(kToolbarHeight),
        child:  CustomAppBar(
          appTitle: 'Appointments',
          appTile: 'Appointments',
          icon: FaIcon(Icons.arrow_back_ios),
          
        ),
      ),
    body: CustomScrollView(
        slivers:<Widget>[
          SliverToBoxAdapter(
            child: Column(
              children:<Widget>[
                
              ],
            ),
          )
        ]
    ),
    
    );
  }
}
