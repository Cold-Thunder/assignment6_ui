import 'package:assignment6/utiles/all_colors.dart';
import 'package:assignment6/utiles/images/booking_imgs.dart';
import 'package:assignment6/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment6/utiles/texts/booking_texts.dart';
import 'package:flutter/material.dart';

class ProtectionSection extends StatelessWidget {
  const ProtectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      height: 197,
      width: width,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
                image: AssetImage(
                  BookingImgs.freeProtBack,
                ),
                fit: BoxFit.fill)),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 30,
              left: width * 0.25,
              child: Text(
                BookingTexts.freeProc,
                style: TextStyles.bookingHeadStyle.copyWith(fontSize: 14.8),
              ),
            ),
            SizedBox(height: 10),
            Positioned(
              left: width * 0.25,
              child: SizedBox(
                width: width * 0.6,
                child: RichText(
                  text: TextSpan(
                    text: BookingTexts.freeProcDes,
                    style:
                        TextStyles.bookingHeadDesStyle.copyWith(fontSize: 10.5),
                    children: [
                      TextSpan(
                        text: BookingTexts.covid,
                        style: TextStyles.bookingHeadDesStyle.copyWith(
                            fontSize: 11.6, color: AllColors.covidGreen),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 120,
                left: width * 0.25,
                child: InkWell(
                  onTap: (){},
                  child: Text(BookingTexts.seeDetails, style: TextStyles.bookingHeadStyle.copyWith(
                    fontSize: 13.2,
                    color: AllColors.seeDetBlue
                  ))
                )
            ),
            Positioned(
              top: 110,
              left: width * 0.73,
                child: Image.asset(BookingImgs.celebrateImg, height: 44, width: 44)
            )
          ],
        ),
      ),
    );
  }
}
