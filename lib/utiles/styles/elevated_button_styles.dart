import 'package:assignment6/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class ElevatedButtonStyles{
  static ButtonStyle bookingButtonStyle = ElevatedButton.styleFrom(
    fixedSize: Size.fromHeight(50),
    backgroundColor: AllColors.buttonYellow,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    )
  );
}