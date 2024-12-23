import 'package:assignment6/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class DividerUse extends StatelessWidget{
  const DividerUse({super.key});
  @override
  Widget build(BuildContext context){
    return Divider(
      color: AllColors.bookingDividerGrey,
      thickness: 8,
    );
  }
}