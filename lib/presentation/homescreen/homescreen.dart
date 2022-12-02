import 'package:adil_project/core/core.dart';
import 'package:adil_project/presentation/homescreen/widgets/icecreammodel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: const [
                  IcecreamModelWidget(title: 'model'),
                  width10,
                  IcecreamModelWidget(title: 'title')
                ],
              ),heigh10,
               Row(
                children: const [
                  IcecreamModelWidget(title: 'model'),
                  width10,
                  IcecreamModelWidget(title: 'title')
                ],
              ),heigh10, Row(
                children: const [
                  IcecreamModelWidget(title: 'model'),
                  width10,
                  IcecreamModelWidget(title: 'title')
                ],
              )

            ],
          ),
        ),
      )),
    );
  }
}
