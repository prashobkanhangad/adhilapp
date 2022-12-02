import 'package:adil_project/core/core.dart';
import 'package:adil_project/presentation/orderscreen/widgets/orderdetailslistview.dart';
import 'package:adil_project/presentation/orderscreen/widgets/stockContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        // primary: true,
        children: const [
          heigh5,
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 7),
              child: StockContainer()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 7),
            child: OrderDetailes(),
          )
        ],
      )),
    );
  }
}
