// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:adil_project/core/core.dart';
import 'package:flutter/cupertino.dart';

class topContainer extends StatelessWidget {
  const topContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.maxFinite,
      // height: 200,
      decoration: BoxDecoration(
          color: kwhitecolor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: screenwidth * 0.6,
                      child: const Text(
                        'Costomer Name ',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: screenwidth * 0.6,
                      child: const Text(
                        'Shop Name ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 22),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: screenwidth * 0.6,
                      child: const Text(
                        'Shop Id ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 22),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: screenwidth * 0.25,
                  height: screenwidth * 0.23,
                  decoration: BoxDecoration(
                      color: kgreycolor,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            Container(
              width: screenwidth * 0.8,
              child: const Text(
                'Shop AdressDSFSGFFDGS FGSD, DSFFGFDG, SDAGFSG, GSDGAGSG',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 22),
                maxLines: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
