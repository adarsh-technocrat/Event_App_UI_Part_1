import 'package:eventapp_part_1/Component/Constants.dart';
import 'package:eventapp_part_1/Screens/HomePage/HomeComponents/DefaultIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 2.5,
        decoration: BoxDecoration(
          color: Constants.kprimarycolor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 20,
                right: 10,
                bottom: 10,
              ),
              child: HeaderTopSection(),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderTopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/img5.jpeg"),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "03 Nov 2020",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "William",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(),
              ),
              DefaultIcons(
                img: "assets/icons/message.svg",
                press: () {},
              ),
              SizedBox(
                width: 20,
              ),
              DefaultIcons(
                img: "assets/icons/bell.svg",
                press: () {},
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/menu.svg",
                  color: Colors.white,
                  height: 30,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find Amazing Event",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "235 Events around you",
                style: TextStyle(
                  color: Constants.kgreytextcolor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              "assets/icons/search_icon.svg",
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Find Event",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              )),
                          Expanded(
                            child: Container(),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              "assets/icons/microphone.svg",
                              color: Constants.ksecondarycolor,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Constants.ksecondarycolor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/tune.svg",
                          color: Colors.white,
                          height: 30,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var paths = Path();
    paths.lineTo(0, size.height - 40);
    paths.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 40);
    paths.lineTo(size.width, 0);
    paths.close();

    return paths;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw false;
  }
}
