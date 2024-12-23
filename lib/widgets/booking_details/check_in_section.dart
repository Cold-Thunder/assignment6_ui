import 'package:assignment6/utiles/all_colors.dart';
import 'package:assignment6/utiles/images/booking_imgs.dart';
import 'package:assignment6/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment6/utiles/texts/booking_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckInSection extends StatelessWidget{
  const CheckInSection({super.key});

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 95,
      width: width,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // check in column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(BookingTexts.checkIn, style: TextStyles.bookingHeadDesStyle.copyWith(
                fontSize: 10.9,
                color: AllColors.checkInOutBlack
              )),
              Text(
                BookingTexts.checkInDate, style: TextStyles.bookingHeadDesStyle.copyWith(
                fontSize: 15.7,
                color: AllColors.checkDateBlack
              )
              )
            ]
          ),
          Image.asset(BookingImgs.dividerImg),
          // right section
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(BookingTexts.checkIn, style: TextStyles.bookingHeadDesStyle.copyWith(
                    fontSize: 10.9,
                    color: AllColors.checkInOutBlack
                )),
                Text(
                    BookingTexts.checkInDate, style: TextStyles.bookingHeadDesStyle.copyWith(
                    fontSize: 15.7,
                    color: AllColors.checkDateBlack
                )
                )
              ]
          )
        ]
      )
    );
  }
}