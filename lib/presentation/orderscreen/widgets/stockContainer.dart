import 'package:adil_project/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StockContainer extends StatelessWidget {
  const StockContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kwhitecolor),
      child: Column(
        children: [
          heigh5,
          const Text(
            'Stock Details',
            style:bold25,
          ),
          Divider(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: const [
                ModelCounter(ModelName: 'Model No 1', Stockcount: '100'),
                ModelCounter(ModelName: 'Model No 1', Stockcount: '100'),
                ModelCounter(ModelName: 'Model No 1', Stockcount: '100'),
                ModelCounter(ModelName: 'Model No 1', Stockcount: '100'),
                ModelCounter(ModelName: 'Model No 1', Stockcount: '100')
              ],
            ),
          ),
          heigh5
        ],
      ),
    );
  }
}

class ModelCounter extends StatelessWidget {
  final String ModelName;
  final String Stockcount;

  const ModelCounter(
      {Key? key, required this.ModelName, required this.Stockcount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7.0),
      child: Row(
        children: [
          Text(
            '$ModelName  -   ',
            style:  normal22,
          ),
          Text(
            Stockcount,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          GestureDetector(
            child: Container(
              height: 25,
              width: 70,
              decoration: BoxDecoration(
                  color: kyellowcolor, borderRadius: BorderRadius.circular(8)),
              child: const Center(
                child: Text(
                  'Update',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          // width10
        ],
      ),
    );
  }
}
