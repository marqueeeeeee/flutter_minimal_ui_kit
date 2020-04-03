
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingBottom extends StatelessWidget {
  final String title;
  final String description;
  final String buttonTitle;
  final Function onPressed;

  const OnboardingBottom(
      {Key key, this.title, this.description, this.buttonTitle, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Spacer(),
          Text(
            title,
            style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 20,
                letterSpacing: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontSize: 16, color: Colors.grey.shade400, height: 1.5),
          ),
          Spacer(),
          FlatButton(
            onPressed: onPressed,
            child: Text(
              "Get Started",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
