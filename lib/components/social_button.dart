import 'package:drappointment/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.socail});

  final String socail;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {}, //
      child: SizedBox(
        width: (Config.widthSize ?? 0) * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/$socail.png',
              width: 40,
              height: 40,
            ),
            Text(socail.toUpperCase(),
                style: const TextStyle(color: Colors.black))
          ],
        ),
      ),
    );
  }
}
