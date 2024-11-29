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
    return const  Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(60),
        child: CustomAppBar(
          appTitle: 'Doctor Details',
          icon:  FaIcon(Icons.arrow_back_ios), appTile: '',
        ),
      ),
      body:  Center(
        child: Text('Doctor Details Page'),
      ),
    );
  }
}
