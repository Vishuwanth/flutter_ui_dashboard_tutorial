import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_tutorial/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = const TextStyle(
        fontFamily: "Montserrat Regualar",
        fontSize: 14,
        color: Color.fromRGBO(63, 36, 63, 1));
    var cardList = [
      {"img": "assets/images/1.svg", "text": "Personal Data"},
      {"img": "assets/images/2.svg", "text": "Course Schedule"},
      {"img": "assets/images/3.svg", "text": "Attendance Recap"},
      {"img": "assets/images/4.svg", "text": "Study Result"},
      {"img": "assets/images/5.svg", "text": "Course Booking"},
      {"img": "assets/images/6.svg", "text": "Course Plan"},
    ];
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: size.height * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/top_header.png"),
                fit: BoxFit.fill,
              ))),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=441&q=80"),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Vishwanth",
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "410141041460",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: "Montserrat Medium"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
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
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "assets/images/2.svg",
                                height: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              Text(
                                "Course Schedule",
                                style: cardTextStyle,
                              )
                              // SvgPicture.asset("assets/images/1.png"),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "assets/images/3.svg",
                                height: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              Text(
                                "Attendance Recap",
                                style: cardTextStyle,
                              )
                              // SvgPicture.asset("assets/images/1.png"),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "assets/images/4.svg",
                                height: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              Text(
                                "Study Result",
                                style: cardTextStyle,
                              )
                              // SvgPicture.asset("assets/images/1.png"),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "assets/images/5.svg",
                                height: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              Text(
                                "Course Booking",
                                style: cardTextStyle,
                              )
                              // SvgPicture.asset("assets/images/1.png"),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "assets/images/6.svg",
                                height: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              Text(
                                "Course Plan",
                                style: cardTextStyle,
                              )
                              // SvgPicture.asset("assets/images/1.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
