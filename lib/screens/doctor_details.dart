import 'package:drappointment/components/button.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:<Widget>[
            const AboutDoctor(),
             const DetailBody(),
               Padding(padding: 
               const EdgeInsets.all(20)
               ,child: Button(title: 'Book Appointment',
                width: double.infinity,
                 onPressed: () {
                // navigate to booking page
                // let's create that
               }, disable: false
               ),
               )
             ],
          ),
        ),
      ),
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
          const Text(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Config.spaceSmall,
            const DoctorInfo(),
            Config.spaceBig,
            const Text(
              'About Doctor',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Config.spaceSmall,
            const Text(
                'Dr  Richard Tan is an experience Dental at Sarawak. He is graduated since 2008, and completed his training at Sungai Buloh General Hospital.' , 
                style: TextStyle(
                  fontWeight: FontWeight.w500,height: 1.5,
                ),
                softWrap: true,
                textAlign: TextAlign.justify,)
          ],
        ));
  }
}
class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        InfoCard(
          label: 'Patients',
          value: '109',
        ),
        SizedBox(
          width: 15,
        ),
        InfoCard(
          label: 'Experiences',
          value: '10 Years',
        ),
        SizedBox(
          width: 15,
        ),
        InfoCard(
          label: 'Rating',
          value: '4.6',
        )
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Config.primaryColor),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,  // Center text vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Center text horizontally
        children: <Widget>[
          Text(
            label,
            style: const TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,  // Align label text in center
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,  // Align value text in center
          ),
        ],
      ),
    ));
  }
}
