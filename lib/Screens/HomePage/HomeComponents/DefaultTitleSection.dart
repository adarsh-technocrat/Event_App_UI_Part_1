import 'package:eventapp_part_1/Component/Constants.dart';
import 'package:flutter/material.dart';

class DefaultTitleSection extends StatelessWidget {
  final Function press;
  final String title;

  const DefaultTitleSection({Key key, this.press, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            TextButton(
              onPressed: press,
              child: Text(
                "View All",
                style: TextStyle(
                  color: Constants.ksecondarycolor,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
