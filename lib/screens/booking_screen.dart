import 'package:assignment6/utiles/all_colors.dart';
import 'package:assignment6/utiles/styles/elevated_button_styles.dart';
import 'package:assignment6/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment6/utiles/texts/booking_texts.dart';
import 'package:assignment6/widgets/booking_details/booking_top_card.dart';
import 'package:assignment6/widgets/booking_details/check_in_section.dart';
import 'package:assignment6/widgets/booking_details/divider_use.dart';
import 'package:assignment6/widgets/booking_details/guess_details_section.dart';
import 'package:assignment6/widgets/booking_details/protection_section.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,)
        ),
        title: Text(
          BookingTexts.appbarTitle,
          style: TextStyles.appBarText
        ),
        centerTitle: true
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 99,
        decoration: BoxDecoration(
          color: AllColors.appBarWhit,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -4),
              color: AllColors.shadowColor,
              spreadRadius: 10,
              blurRadius: 3
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(BookingTexts.priceHead, style:TextStyles.bookingHeadStyle.copyWith(
                  fontSize: 10.1,
                ),),
                Text(BookingTexts.price, style: TextStyles.bookingHeadStyle.copyWith(
                  fontSize: 17.1,
                  color: AllColors.seeDetBlue
                ),)
              ],
            ),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButtonStyles.bookingButtonStyle,
                child: Text(BookingTexts.confirmButton, style: TextStyles.bookingHeadStyle.copyWith(
                  fontSize: 13.1,
                  color: AllColors.buttonTextGreen
                ))
            )
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            // top section
            BookingTopCard(),
            // check in section
            CheckInSection(),
            DividerUse(),
            GuessDetailsSection(),
            DividerUse(),
            ProtectionSection()
          ]
        )
      )
    );
  }
}
