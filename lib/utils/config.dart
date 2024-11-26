import 'package:flutter/material.dart';

class Config {
  static  MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  // width and height initialization
  void init(){
    MediaQueryData  = MediaQuery.of(context);
    screenHeight= mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
  }
  static get widthSize{
    return screenWidth;
  }
    static get heightSize{
    return screenHeight;
  }

// define spacing height 
static const spaceSmall = SizedBox(height: 25,);
static final spaceMedium= SizedBox(height: screenHeight!* 0.05,);
static final SpaceBig = SizedBox(height: screenHeight!* 0.08,);


// textform field border 
 static const OutlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
 );

static const focusBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
  borderSide: BorderSide(
    color: Colors.greenAccent,
  )
);

// define spacing height 
 

}