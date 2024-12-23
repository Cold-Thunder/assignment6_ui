import 'package:assignment6/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class TextStyles{
  static TextStyle appBarText = TextStyle(
      fontSize: 16.9,
      color: AllColors.appBarTitleBlack,
      fontFamily: 'Inter_Semi_Bold'
  );

  static TextStyle bookingHeadStyle = TextStyle(
    fontSize: 15,
    color: AllColors.bookingHeadBlack,
    fontFamily: 'Inter_Semi_Bold',
    fontWeight: FontWeight.w600
  );
  
  static TextStyle bookingHeadDesStyle = TextStyle(
    fontSize: 12.1,
    color: AllColors.bookingHeadSubBlack,
    fontFamily: 'Inter_Semi_Bold',
    fontWeight: FontWeight.w600
  );

  static TextStyle bookingEditStyle = TextStyle(
    fontSize: 13.2,
    color: AllColors.seeDetBlue,
    fontFamily: 'Inter_Semi_Bold',
    fontWeight: FontWeight.w600
  );
}