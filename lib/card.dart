import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashCard extends StatelessWidget {
  const DashCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cardTextStyle = const TextStyle(
        fontFamily: "Montserrat Regualar",
        fontSize: 14,
        color: Color.fromRGBO(63, 36, 63, 1));
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/images/1.svg",
            height: 100,
            allowDrawingOutsideViewBox: true,
          ),
          Text(
            "Personal Data",
            style: cardTextStyle,
          )
          // SvgPicture.asset("assets/images/1.png"),
        ],
      ),
    );
  }
}
