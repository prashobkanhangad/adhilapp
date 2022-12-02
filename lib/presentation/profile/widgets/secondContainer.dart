import 'package:adil_project/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kwhitecolor),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Payment Details ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 10,
            ),
            Row(
              children: const [
                Text('Amound Pending - ',
                    style: TextStyle(
                      fontSize: 22,
                    )),
                Text('20,000/-',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ],
            ),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: kblackcolor,
                    padding: EdgeInsets.zero,
                  textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                    ),
                onPressed: () {},
                child: const Text(
                  'Payment History',

                  // TextStyle(
                  //     fontSize: 22,
                  //     fontWeight: FontWeight.bold,
                  //     color: kblackcolor),
                )),
            heigh10,
            SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kyellowcolor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(kblackcolor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                child: const Text('Update Payment',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),heigh10
          ],
        ),
      ),
    );
  }
}
