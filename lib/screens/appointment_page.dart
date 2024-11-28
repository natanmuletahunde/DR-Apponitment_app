import 'package:drappointment/utils/config.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

enum FilterStatus { upcoming, complete, cancel }

class _AppointmentPageState extends State<AppointmentPage> {
  FilterStatus status = FilterStatus.upcoming;
  Alignment _alignment = Alignment.centerLeft;

  List<Map<String, String>> schedules = [
    {
      "doctor_name": "Richard Tan",
      "doctor_profile": "assets/doctor2.jpg",
      "category": "Dental",
      "status": "upcoming",
    },
    {
      "doctor_name": "Max Lim",
      "doctor_profile": "assets/doctor3.jpg",
      "category": "Cardiology",
      "status": "complete",
    },
    {
      "doctor_name": "Jane Wong",
      "doctor_profile": "assets/doctor4.jpg",
      "category": "Respiration",
      "status": "complete",
    },
    {
      "doctor_name": "Jenny Song",
      "doctor_profile": "assets/doctor5.jpg",
      "category": "General",
      "status": "cancel",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Filtered appointment schedules
    List<Map<String, String>> filteredSchedules = schedules.where((schedule) {
      return schedule['status'] == status.name;
    }).toList();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Appointment Schedule',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Config.spaceSmall,
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (FilterStatus filterStatus in FilterStatus.values)
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (filterStatus == FilterStatus.upcoming) {
                                  status = FilterStatus.upcoming;
                                  _alignment = Alignment.centerLeft;
                                } else if (filterStatus == FilterStatus.complete) {
                                  status = FilterStatus.complete;
                                  _alignment = Alignment.center;
                                } else if (filterStatus == FilterStatus.cancel) {
                                  status = FilterStatus.cancel;
                                  _alignment = Alignment.centerRight;
                                }
                              });
                            },
                            child: Center(
                              child: Text(filterStatus.name), // Fixed this line
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                  AnimatedAlign(alignment:_alignment, duration: Duration(milliseconds: 200),
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Config.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        status.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  ),

              ],
            ),
            Config.spaceSmall,
            Expanded(child:ListView.builder( itemCount: filteredSchedules.length,itemBuilder:((context,index)
            {
             var _schedule = filteredSchedules[index];
             bool isLastElement =filteredSchedules.length + 1==index;

             return Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(20),

              ),
              margin: !isLastElement? const EdgeInsets.only(bottom: 20)
              :EdgeInsets.zero,
              child:Padding(padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                ],
              ),)
             );
            }
            )
             )
             )

          ],
        ),
      ),
    );
  }
}
