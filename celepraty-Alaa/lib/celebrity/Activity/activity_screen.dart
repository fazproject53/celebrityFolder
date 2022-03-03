import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:celepraty/celebrity/Activity/news/news.dart';
import 'package:celepraty/celebrity/Activity/studio/studio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'studio/studio.dart';


class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drowAppBar("التفاعلات", context),
        body: const ActivityScreenMain(),
      ),
    );
  }
}
class ActivityScreenMain extends StatefulWidget {
  const ActivityScreenMain({Key? key}) : super(key: key);

  @override
  _ActivityScreenMainState createState() => _ActivityScreenMainState();
}

class _ActivityScreenMainState extends State<ActivityScreenMain> {
  int? isSelected = 1;
  bool grandientStudio=false;
  bool grandientnews=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( children: [

        SizedBox(
          height: 26.h,
        ),
        //صف الاختيارات-------------------------------
        drowRowButton(context),
        SizedBox(
          height: 30.h,
        ),
        //النص-------------------------------

        if(isSelected == 1)
        Padding(
          padding: EdgeInsets.only(left: 28.w, right: 28.w),
          child: text(context,
             "التفاعلات الخاصة بمنشوراتك",
              //,
              18,
              black,
              fontWeight: FontWeight.bold),
        ),

        SizedBox(
          height: 10.h,
        ),

        //الطلبات وفق التصنيف-------------------------------

        Expanded(
          flex: 4,
          child: isSelected == 1
              ?  Studio()
              : news()
        ),
      ]),
    );
  }
  drowRowButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 28.w, right: 28.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
//الاعلانات-------------------------------------------------------
          Expanded(
            child: gradientContainer(
                96,
                buttoms(
                  context,
                  'الاستديو',
                  12,
                  grandientStudio? black:white,
                      () {
                    setState(() {
                      isSelected = 1;
                      grandientnews=true;
                      grandientStudio =false;
                    });
                    print("adv$isSelected");
                  },
                ),
                gradient: grandientStudio
            ),
          ),

          SizedBox(width: 17.w),
//الاهداءات-------------------------------------------------------
          Expanded(
            child: gradientContainer(
                96,
                buttoms(
                  context,
                  'الاخبار',
                  12,
                  grandientnews? black:white,
                      () {
                    setState(() {
                      isSelected = 2;
                      grandientStudio=true;
                      grandientnews =false;
                    });
                    print("gift$isSelected");
                  },
                ),
                gradient: grandientnews
            ),
          ),

          SizedBox(width: 17.w),
//المساحة الاعلانية-------------------------------------------------------


//-------------------------------------------------------
        ],
      ),
    );
  }
}
