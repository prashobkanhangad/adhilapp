import 'package:adil_project/core/core.dart';
import 'package:adil_project/presentation/profile/widgets/secondContainer.dart';
import 'package:adil_project/presentation/profile/widgets/topcontainer.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: const [
            topContainer(),
            heigh20,
            SecondContainer(),
          ],
        ),
      )),
    );
  }
}
