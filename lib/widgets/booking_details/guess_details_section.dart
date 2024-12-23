import 'package:assignment6/utiles/all_colors.dart';
import 'package:assignment6/utiles/images/booking_imgs.dart';
import 'package:assignment6/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment6/utiles/texts/booking_texts.dart';
import 'package:flutter/material.dart';

class GuessDetailsSection extends StatelessWidget {
  const GuessDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 191,
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(BookingTexts.guessDetails, style: TextStyles.bookingHeadStyle),
            InkWell(
              onTap: () {},
              child:
                  Text(BookingTexts.edit, style: TextStyles.bookingEditStyle),
            )
          ]),
          SizedBox(
            height: 10,
          ),
          Text(BookingTexts.name, style: TextStyles.bookingHeadStyle),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                alignment: Alignment.centerLeft,
                width: 25,
                child: Image.asset(BookingImgs.messageIcon)),
            Text(BookingTexts.email,
                style: TextStyles.bookingHeadDesStyle.copyWith(
                    fontSize: 12.5, color: AllColors.emailPhoneTitBlack)),
            Spacer(),
            Text(BookingTexts.emailAdd,
                style: TextStyles.bookingHeadDesStyle
                    .copyWith(fontSize: 12.1, color: AllColors.emPhoDetBlack))
          ]),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  width: 25,
                  child: Image.asset(BookingImgs.phoneIcon)),
              Text(
                BookingTexts.phone,
                style: TextStyles.bookingHeadDesStyle.copyWith(
                    fontSize: 12.5, color: AllColors.emailPhoneTitBlack),
              ),
              Spacer(),
              Text(
                BookingTexts.phoneNum,
                style: TextStyles.bookingHeadDesStyle
                    .copyWith(fontSize: 13.5, color: AllColors.emPhoDetBlack),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
