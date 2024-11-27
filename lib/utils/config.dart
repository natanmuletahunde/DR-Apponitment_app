import 'package:flutter/material.dart';

class Config {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  // Method to initialize MediaQuery data
  static void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context); // Correctly accessing MediaQuery with context
    screenWidth = mediaQueryData!.size.width; // Initialize screenWidth
    screenHeight = mediaQueryData!.size.height; // Initialize screenHeight
  }
  // Getter for screen width
  static double? get widthSize {
    return screenWidth;
  }
  // Getter for screen height
  static double? get heightSize {
    return screenHeight;
  }
  // Define spacing heights
  static const spaceSmall = SizedBox(height: 25);
  // Use screenHeight safely (check for null)
  static SizedBox get spaceMedium {
    return SizedBox(height: (screenHeight ?? 0) * 0.05);
  }
  static SizedBox get spaceBig {
    return SizedBox(height: (screenHeight ?? 0) * 0.08);
  }
  // TextFormField borders
  static const OutlineInputBorder outlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  static const OutlineInputBorder focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.greenAccent,
    ),
  );
  static const OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );
  static const primaryColor = Colors.greenAccent;
}
