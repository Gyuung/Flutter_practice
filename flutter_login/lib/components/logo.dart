import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  final String title;

  const Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/aietlogo2.svg",
            height: 130, width: 70, color: Colors.black),
        // Text(
        //   "Hi",
        //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold) , )
      ],
    );
  }
}
