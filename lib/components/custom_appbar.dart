import 'package:drappointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, required String appTitle, this.appTile, this.route, this.icon, this.action});// all final varibles must be applied first

  @override
  Size get PreferredSize => const Size.fromHeight(60);

  final String? appTile;
  final String? route;
  final FaIcon? icon;
  final List<Widget>? action;
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.appTile!,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        leading: widget.icon != null
            ? Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Config.primaryColor,
                ),
                child: IconButton(
                  onPressed: () {
                    if (widget.route != null) {
                      // Check if the route is not null
                      Navigator.of(context)
                          .pushNamed(widget.route!); // Navigate to the route
                    }
                    else{
                      Navigator.of(context).pop();
                    }
                  },
                  icon: widget.icon!, // Assert icon is not null
                  iconSize: 16,
                  color: Colors.white,
                ))
            : null,
            actions: widget.action?? null,
            );
  }
}
