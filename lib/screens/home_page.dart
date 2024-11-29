import 'package:drappointment/components/appointment_card.dart';
import 'package:drappointment/components/doctor_card.dart';
import 'package:drappointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> medCat = [
    // dynamic un this case means the value can be any type.
    {
      "icon": FontAwesomeIcons.userDoctor,
      "category": "General",
    },
    {
      "icon": FontAwesomeIcons.heartPulse,
      "category": "Cardiology",
    },
    {
      "icon": FontAwesomeIcons.lungs,
      "category": "Respirations",
    },
    {
      "icon": FontAwesomeIcons.hand,
      "category": "Dermatology",
    },
    {
      "icon": FontAwesomeIcons.personPregnant,
      "category": "Gynecology",
    },
    {
      "icon": FontAwesomeIcons.teeth,
      "category": "Dental",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Amanda',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile1.jpg'),
                  ),
                )
              ],
            ),
            Config.spaceSmall,
            // category listing
            const Text(
              'Category',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Config.spaceSmall,
            SizedBox(
              height: Config.heightSize! * 0.05,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List<Widget>.generate(medCat.length, (index) {
                  return Card(
                    margin: const EdgeInsets.only(right: 20),
                    color: Config.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FaIcon(
                            medCat[index]['icon'],
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            medCat[index]['category'],
                            style: const TextStyle(
                              fontSize: 16,
                              color:Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Config.spaceSmall,
            const Text(
              'Appointment Today',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
              ),
            Config.spaceSmall,
             const AppointmentCard(),
            Config.spaceSmall,
             const Text(
              'Top Doctor',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
              ),
              //List of Top Doctor
              Config.spaceSmall,
              Column(
                children: 
                  List.generate(10, (index){
                  return const  DoctorCard(
                        route:'doc_details',
                  );
                  }
                  )
                  )
                    ],
                  ),
          )),
    ));
  }
}
