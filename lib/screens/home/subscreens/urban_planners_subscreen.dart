import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/colors.dart';

class UrbanPlannersSubscreen extends StatelessWidget {
  const UrbanPlannersSubscreen({
    Key? key,
    this.controller,
  }) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 200),
        Text(
          'Hi , welcome to my app'.toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            color: CustomColors.textGreen,
            fontSize: 19,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 22),
        Text(
          'Amirmahdi \Nourkazemi',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: CustomColors.headerText,
            fontSize: 50,
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
          'Experienced Flutter developer\n with two years of expertise \n in creating apps',
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            color: CustomColors.text,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            controller!.animateTo(1540,
                duration: const Duration(milliseconds: 2300),
                curve: Curves.ease);
          },
          child: Text(
            'Show more',
            style: GoogleFonts.nunito(
              color: CustomColors.orange,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
        ),
        const SizedBox(height: 330),
        _buildExteriorInfoSection(),
        const SizedBox(height: 370),
      ],
    );
  }

  Widget _buildExteriorInfoSection() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'My Skills',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: CustomColors.headerText,
                fontSize: 28,
                fontWeight: FontWeight.w800,
                height: 1,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Proficient in Dart,\nFlutter, Flutter web\nBloc for state \n management,\n',
              style: GoogleFonts.nunito(
                color: CustomColors.text,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
