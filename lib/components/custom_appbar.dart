import 'package:drappointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    required this.appTile, // Required to avoid null issues.
    this.route,
    this.icon,
    this.action, required String appTitle,
  });

  @override
  Size get PreferredSize => const Size.fromHeight(60);

  final String appTile; // Made non-nullable.
  final String? route;
  final FaIcon? icon;
  final List<Widget>? action;

  @override
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
        widget.appTile, // Directly used since it's non-nullable.
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      leading: widget.icon != null
          ? Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Config.primaryColor,
              ),
              child: IconButton(
                onPressed: () {
                  if (widget.route != null) {
                    // Check if the route is not null
                    Navigator.of(context).pushNamed(widget.route!);
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                icon: widget.icon!,
                iconSize: 16,
                color: Colors.white,
              ),
            )
          : null,
      actions: widget.action ?? [],
    );
  }
}
