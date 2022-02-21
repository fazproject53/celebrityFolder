///import section
import 'package:celepraty/MainScreen/main_screen.dart';
import 'package:celepraty/Models/Methods/classes/GradientIcon.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:celepraty/Users/Explowr/Explower.dart';
import 'package:celepraty/celebrity/Activity/activity_screen.dart';
import 'package:celepraty/celebrity/DiscountCodes/discount_codes_main.dart';
import 'package:celepraty/celebrity/celebrityHomePage.dart';
import 'package:celepraty/celebrity/chat/chatsList.dart';
import 'package:celepraty/celebrity/setting/celebratyProfile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 2;
  final items = <Widget>[
    GradientIcon(nameIcon, 30.w,
        const LinearGradient(
          begin: Alignment(0.7, 2.0),
          end: Alignment(-0.69, -1.0),
          colors: [
            Color(0xff0ab3d0),
            Color(0xffe468ca)
          ],
          stops: [0.0, 1.0],
        )),
    ///
    GradientIcon(chatIcon, 30.w,
        const LinearGradient(
          begin: Alignment(0.7, 2.0),
          end: Alignment(-0.69, -1.0),
          colors: [
            Color(0xff0ab3d0),
            Color(0xffe468ca)
          ],
          stops: [0.0, 1.0],
        )),
    ///
    GradientIcon(homeIcon, 30.w,
        const LinearGradient(
          begin: Alignment(0.7, 2.0),
          end: Alignment(-0.69, -1.0),
          colors: [
            Color(0xff0ab3d0),
            Color(0xffe468ca)
          ],
          stops: [0.0, 1.0],
        )),
    ///
    GradientIcon(exploreIcon, 30.w,
        const LinearGradient(
          begin: Alignment(0.7, 2.0),
          end: Alignment(-0.69, -1.0),
          colors: [
            Color(0xff0ab3d0),
            Color(0xffe468ca)
          ],
          stops: [0.0, 1.0],
        )),
    ///
    GradientIcon(notificationIcon, 30.w,
        const LinearGradient(
          begin: Alignment(0.7, 2.0),
          end: Alignment(-0.69, -1.0),
          colors: [
            Color(0xff0ab3d0),
            Color(0xffe468ca)
          ],
          stops: [0.0, 1.0],
        )),

  ];

  final Screens = [
    /// Celebrity Profile
    celebratyProfile(),
    /// Chats
    chatsList(),
    /// Home Screen
    celebrityHomePage(),
    /// Explore
    Explower(),
    /// Activity page
    ActivityScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[index],
      bottomNavigationBar: CurvedNavigationBar(
       backgroundColor: white,
        color: black,
        index: index,
        items: items,
        height: 50.h,
        onTap: (index) => setState(() => this.index = index),
      ),

    );
  }
}








