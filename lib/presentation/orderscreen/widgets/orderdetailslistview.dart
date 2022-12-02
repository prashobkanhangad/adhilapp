import 'package:adil_project/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailes extends StatelessWidget {
  const OrderDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kwhitecolor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          heigh5,
          const Text(
            'Order Details',
            style: bold25,
          ),
          const Divider(),
          Container(
            // height: 1000,
            child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text('Item Orderd - ', style: normal22,),
                              Text('Qty', style: normal22),
                            ],
                          ),
                          Row(
                            children: const [
                              Text('Order Status - ',style: normal22),
                              Text('Deliverd', style: normal22),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 20),
          ),
        ],
      ),
    );
  }
}
