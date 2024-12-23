import 'package:assignment6/utiles/all_colors.dart';
import 'package:assignment6/utiles/images/booking_imgs.dart';
import 'package:assignment6/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment6/utiles/texts/booking_texts.dart';
import 'package:flutter/cupertino.dart';

class BookingTopCard extends StatelessWidget{
  const BookingTopCard({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 123,
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2,
              color: AllColors.bottomBorderBlack
            )
          )
      ),
      child: Row(
        children: [
          Container(
            height: 83,
            width: 83,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(BookingImgs.placeImg),
                fit: BoxFit.cover
              )
            )
          ),
          SizedBox(width: 15),
          SizedBox(
            height: 83,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(BookingTexts.locationName, style: TextStyles.bookingHeadStyle),
                Text(BookingTexts.locationDes, style: TextStyles.bookingHeadDesStyle),
                Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(BookingImgs.personImg),
                        SizedBox(width: 8),
                        Text(BookingTexts.roomDes,
                        style: TextStyles.bookingHeadDesStyle.copyWith(
                          fontSize: 10.2,
                          color: AllColors.roomDesBlack
                        )
                        )
                      ]
                    )
                )
              ]
            ),
          )
        ]
      )
    );
  }
}