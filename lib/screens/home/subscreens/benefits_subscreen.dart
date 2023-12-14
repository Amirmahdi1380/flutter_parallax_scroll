import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/colors.dart';
import '../../../shared/widgets.dart';

class BenefitsSubscreen extends StatelessWidget {
  const BenefitsSubscreen({
    Key? key,
    this.controller,
  }) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 200.0),
        Text(
          'All you know'.toUpperCase(),
          style: GoogleFonts.nunito(
            color: CustomColors.textGreen,
            fontSize: 19,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 22),
        Text(
          'Experiences',
          style: GoogleFonts.poppins(
            color: CustomColors.headerText,
            fontSize: 45,
            fontWeight: FontWeight.w800,
            height: .9,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 70,
          height: 5,
          child: Container(
            color: CustomColors.orange,
          ),
        ),
        const SizedBox(height: 25),
        Text(
          'Enhanced app downloads by simplifying the program \nand creating a more responsive user experience.',
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            color: CustomColors.text,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Created a user-friendly application interface\nby integrating captivating animations using Rive.',
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            color: CustomColors.text,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'for more you can see my profile',
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            color: CustomColors.text,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 45),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgLabel(
              assetName: 'assets/svg/mountains.svg',
              label: '',
            ),
            SizedBox(width: 45),
            SvgLabel(
              assetName: 'assets/svg/stars.svg',
              label: '',
            ),
            SizedBox(width: 45),
            SvgLabel(
              assetName: 'assets/svg/money.svg',
              label: '',
            ),
          ],
        ),
        const SizedBox(height: 90),
        Align(
          alignment: const Alignment(.8, 0.0),
          child: CustomButton(
            text: 'Get in touch',
            minWidth: 200,
            onPressed: () {
              controller!.animateTo(0,
                  duration: const Duration(milliseconds: 2300),
                  curve: Curves.ease);
            },
          ),
        ),
        const SizedBox(height: 200),
      ],
    );
  }
}
