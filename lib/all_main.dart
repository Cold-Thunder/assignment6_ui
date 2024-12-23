import 'package:assignment6/screens/account_screen.dart';
import 'package:assignment6/screens/booking_screen.dart';
import 'package:assignment6/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class AllMain extends StatelessWidget{
  const AllMain({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.appBarWhit,
          iconTheme: IconThemeData(
            color: AllColors.appBarIconBlack
          )
        )
      ),
      home: AccountScreen()
    );
  }
}