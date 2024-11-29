import 'package:drappointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/custom_appbar.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          appTile: 'Doctor Details', // Correctly set the title here
          appTitle: 'Doctor Details', // Pass the correct app title
          icon: const FaIcon(Icons.arrow_back_ios),
          action: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isFav = !isFav;
                  });
                },
                icon: FaIcon(
                  isFav ? Icons.favorite_rounded : Icons.favorite_outline,
                  color: Colors.red,
                ))
          ],
        ),
      ),
      body: const SafeArea(
          child: Column(
        children: <Widget>[AboutDoctor()],
      )),
    );
  }
}

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});
  @override
  Widget build(BuildContext context) {
    Config.init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('assets/images/doctor2.jpg'),
            backgroundColor: Colors.white,
          ),
          Config.spaceMedium,
          const Text(
            'Dr Richard Tan',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.screenWidth! * 0.75,
            child: const Text(
              'MBBS (International Medical University Maylaysia) , MRCP (Royal College of Physician,United Kingdom)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Config.spaceSmall,
          const  Text(
               'Sarawak General Hospital ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Config.init(context); 
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child:  const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          Config.spaceSmall,
        ],
      )
    );
  }
}
