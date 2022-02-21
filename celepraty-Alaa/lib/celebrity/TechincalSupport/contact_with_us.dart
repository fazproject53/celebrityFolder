///import section
import 'package:flutter/material.dart';
import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactWithUsMain extends StatefulWidget {
  const ContactWithUsMain({Key? key}) : super(key: key);

  @override
  _ContactWithUsMainState createState() => _ContactWithUsMainState();
}

class _ContactWithUsMainState extends State<ContactWithUsMain> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drowAppBar("الدعم الفني", context),
        body: const ContactWithUsHome(),
      ),
    );
  }
}

///----------------------------ContactWithUsHome----------------------------
class ContactWithUsHome extends StatefulWidget {
  const ContactWithUsHome({Key? key}) : super(key: key);

  @override
  _ContactWithUsHomeState createState() => _ContactWithUsHomeState();
}

class _ContactWithUsHomeState extends State<ContactWithUsHome> {
  ///Text Field
  final TextEditingController supportName = TextEditingController();
  final TextEditingController supportEmail = TextEditingController();
  final TextEditingController supportPhone = TextEditingController();
  final TextEditingController supportTitle = TextEditingController();
  final TextEditingController supportDescription = TextEditingController();
  final TextEditingController supportAddNew = TextEditingController();

  ///formKey
  final _formKey = GlobalKey<FormState>();

  ///Type
  String typeOfSupport = 'أختر نوع الشكوى';

  ///Type of discount drop down list
  var items = [
    'أختر نوع الشكوى',
    'استفسار',
    'استفسار',
  ];

  ///_value
  int? _value = 1;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ///Title
                        Container(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h, right: 20.w),
                            child: text(context, "قم بملئ البيانات التالية", 20,
                                ligthtBlack,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        ///--------------------------Text Field Section--------------------------
                        ///Enter Your Name
                        paddingg(
                          15,
                          15,
                          15,
                          textFieldNoIcon(
                              context, 'الاسم', 12, false, supportName,
                              (String? value) {
                            /// Validation text field
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          }, false),
                        ),

                        ///Enter Your Email
                        paddingg(
                          15,
                          15,
                          12,
                          textFieldNoIcon(context, 'البريد الالكتروني', 12,
                              false, supportEmail, (String? value) {
                            /// Validation text field
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          }, false),
                        ),

                        ///Enter Your Phone Number
                        paddingg(
                          15,
                          15,
                          12,
                          textFieldNoIcon(
                              context, 'رقم الجوال', 12, false, supportPhone,
                              (String? value) {
                            /// Validation text field
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          }, false),
                        ),

                        ///Select The Type of Support
                        Container(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.h, right: 20.w),
                            child: text(
                                context, "اختر نوع الشكوى", 18, ligthtBlack,
                                family: 'DINNextLTArabic'),
                          ),
                        ),

                        ///The Radio Buttons
                        Container(
                          margin: EdgeInsets.only(top: 5.h, right: 5.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.9,
                                    child: Radio<int>(
                                        value: 1,
                                        groupValue: _value,
                                        activeColor: pink,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value;
                                            isVisible = false;
                                          });
                                        }),
                                  ),
                                  text(context, "استفسار", 12, ligthtBlack,
                                      family: 'DINNextLTArabic'),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.9,
                                    child: Radio<int>(
                                        value: 2,
                                        groupValue: _value,
                                        activeColor: pink,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value;
                                            isVisible = false;
                                          });
                                        }),
                                  ),
                                  text(context, "استفسار", 12, ligthtBlack,
                                      family: 'DINNextLTArabic'),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.9,
                                    child: Radio<int>(
                                        value: 3,
                                        groupValue: _value,
                                        activeColor: pink,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value;
                                            isVisible = false;
                                          });
                                        }),
                                  ),
                                  text(context, "استفسار", 12, ligthtBlack,
                                      family: 'DINNextLTArabic'),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.9,
                                    child: Radio<int>(
                                      value: 4,
                                      groupValue: _value,
                                      activeColor: pink,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = value;
                                          isVisible = true;
                                        });
                                      },
                                    ),
                                  ),
                                  text(context, "اخرى", 12, ligthtBlack,
                                      family: 'DINNextLTArabic'),
                                ],
                              )
                            ],
                          ),
                        ),
                        ///the text field show
                        Visibility(
                          visible: isVisible,
                          child: paddingg(
                            15,
                            15,
                            12,
                            textFieldNoIcon(context, 'ادخل شكوتك الخاصة ', 12,
                                false, supportAddNew, (String? value) {
                              /// Validation text field
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            }, false, ),
                          ),
                        ),

                        ///Title
                        paddingg(
                          15,
                          15,
                          12,
                          textFieldNoIcon(
                              context, 'موضوع الرسالة', 12, false, supportTitle,
                              (String? value) {
                            /// Validation text field
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          }, false),
                        ),

                        ///Description
                        paddingg(
                          15,
                          15,
                          12,
                          textFieldDesc(
                            context,
                            'تفاصيل الرسالة',
                            12,
                            false,
                            supportDescription,
                            (String? value) {
                              /// Validation text field
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),

                        ///Save box
                        Container(
                          margin: EdgeInsets.only(
                              top: 20.h, right: 20.w, left: 20.w, bottom: 20.h),
                          child: gradientContainerNoborder(500.w,
                              buttoms(context, 'إرسال', 15, white, () {})),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
