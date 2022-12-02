import 'package:adil_project/core/core.dart';
import 'package:flutter/material.dart';

class IcecreamModelWidget extends StatelessWidget {
 final String title;
  const IcecreamModelWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Container(
      width: (screensize.width/2)-15,
      height: 120,
      decoration: BoxDecoration(color: kprimarycolor, borderRadius: BorderRadius.circular(5)),
      child: Center(child: Text(title, style: TextStyle(color: kyellowcolor),)),
    );
  }
}
