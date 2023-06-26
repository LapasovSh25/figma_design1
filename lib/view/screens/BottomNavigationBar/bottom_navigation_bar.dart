import 'package:figma_design1/view/screens/Home/home_page.dart';
import 'package:figma_design1/view/screens/Hospital/hospital_page.dart';
import 'package:figma_design1/view/screens/Menu/menu_page.dart';
import 'package:figma_design1/view/screens/Notification/notification_page.dart';
import 'package:figma_design1/view/screens/Setting/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  final List<Widget> _screens = [
    const MenuPage(),
    const NotificationPage(),
    const HomePage(),
    const HospitalPage(),
    const SettingPage(),
  ];

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: ClipRRect(
        // borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          elevation: 30,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          iconSize: 26.0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/menu.svg"),
              label: 'Menu',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/message.svg"),
              label: 'Notification',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/home.svg"),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/hospital.svg"),
              label: 'Hospital',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/settings.svg"),
              label: 'Settings',
              backgroundColor: Colors.blue,
            ),
          ],
          backgroundColor:  Colors.blue,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
