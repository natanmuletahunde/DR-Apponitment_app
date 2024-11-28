import 'package:drappointment/utils/config.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({super.key});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    Config.init(context);
    return  Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10, vertical: 10
      ),
      height: 150,
      child: GestureDetector(
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(
           children: [
            SizedBox(
               width:Config.widthSize!*0.33,
               child: Image.asset('assets/images/'),
            )
           ],
          ),
        ),
      ),
    );
  }
}