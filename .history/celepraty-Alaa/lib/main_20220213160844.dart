import 'package:celepraty/Models/Variabls/varaibles.dart';

import 'package:celepraty/celebrity/DiscountCodes/discount_codes_main.dart';
import 'package:celepraty/celebrity/Requests/ReguistMainPage.dart';
import 'package:celepraty/celebrity/blockList.dart';
>>>>>>> 3d7f0981a638a6ab6c426c2c0bcce200717c122c
import 'package:celepraty/celebrity/celebrityHomePage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

import 'celebrity/Requests/ReguistMainPage.dart';


void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // i cant hear u
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(413, 763),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: "Cairo",
              colorScheme: ColorScheme.fromSwatch().copyWith(primary: pinkLigth),),
),
      ),
    );
  }
}

