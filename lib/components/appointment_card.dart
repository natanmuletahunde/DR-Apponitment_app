import 'package:drappointment/utils/config.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({super.key});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: <Widget>[
            /// insert the Row here
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'DR Richard  Tan',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Dental',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )
              ],
            ),

            Config.spaceSmall,
          ]),
        ),
      ),
    );
  }
}

// schedule Widget
class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget>[
           Icon(Icons.calendar_today,
          color: Colors.white,
          size: 15),

           SizedBox(width: 5,),
          Text('Thursday ,11/28/2024',
          
          style: TextStyle(
            color: Colors.white
          )
           ,),
            SizedBox(
            width: 20,
           ),
             Icon(Icons.access_alarm,
          color: Colors.white,
          size: 17),
        ],
      ),
    );
           
  }
}
