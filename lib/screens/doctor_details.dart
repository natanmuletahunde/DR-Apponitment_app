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
            IconButton(onPressed: () {}, icon: 
            FaIcon(isFav ? Icons.favorite_border:Icons.favorite_outline,
            color: Colors.red,))
          ],
        ),
      ),
        
    );
  }
}
