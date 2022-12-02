import 'package:adil_project/core/core.dart';
import 'package:adil_project/presentation/homescreen/homescreen.dart';
import 'package:adil_project/presentation/profile/profilescreen.dart';
import 'package:adil_project/presentation/track/trackscreen.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomnavScreen extends StatefulWidget {
  int selectedindex;
  BottomnavScreen({
    required this.selectedindex,
    super.key,
  });

  @override
  State<BottomnavScreen> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomnavScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  // int _currentSelectedIndex = widget.selectedindex;

  final pages = [
    const HomeScreen(),
    const HomeScreen(),
     TrackScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kprimarycolor,
        leadingWidth: 70,
        title: const Text(
          'Icecream',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      //If you want to show body behind the navbar, it should be true
      extendBody: true,
      body: pages[widget.selectedindex],
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: kprimarycolor,
        currentIndex: widget.selectedindex,
        onTap: (newIndex) {
          setState(() {
            widget.selectedindex = newIndex;
          });
        },
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.shopping_cart, title: 'Orders'),
          FloatingNavbarItem(icon: Icons.location_on, title: 'Track Order'),
          FloatingNavbarItem(icon: Icons.account_circle, title: 'Profile'),
        ],
      ),
    );
  }
}
