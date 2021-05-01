import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final Color iconColor;
  final String gender;
  final Function onTap;
  GenderCard({this.genderIcon, this.iconColor, this.gender,@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            genderIcon,
            color: iconColor,
            size: 100,
          ),
          Text(gender,
              style: TextStyle(
                fontSize: 25,
              )),
        ],
      ),
    );
  }
}
