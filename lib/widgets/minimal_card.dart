import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MinimalCard extends StatelessWidget {
  final String amount;
  final String amountType;
  final String cardNumber;

  const MinimalCard({Key key, this.amount, this.amountType, this.cardNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
      height: 200,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.black,
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Text(
              amount,
              style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              amountType,
              style: GoogleFonts.lato(
                color: Colors.grey.shade500,
                fontSize: 12,
              ),
            ),
            Spacer(),
            Text(
              "●●●●  ●●●●  ●●●●  " + cardNumber,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 12, letterSpacing: 5, color: Colors.grey.shade500),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
