import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppointmentBooked extends StatelessWidget {
  const AppointmentBooked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
      child: 
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:<Widget>[
          Expanded(child: 
          Lottie(composition: composition)
          )
         ],
       )
     
     ),
      
    );
  }
}