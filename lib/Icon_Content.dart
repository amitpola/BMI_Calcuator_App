import 'package:flutter/material.dart';
import 'Constants.dart';


class IconText extends StatelessWidget {
  IconText({@required this.iconPassed,@required this.gender});

  final IconData iconPassed;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconPassed,
          size: 80.0,
        ),
        SizedBox(height: 20.0,),
        Text(
          gender,
          style: kgenderTextStyle,
        ),
      ],
    );
  }
}