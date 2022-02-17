///import section
import 'package:flutter/material.dart';
import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateNewDiscountCode extends StatelessWidget {
  const CreateNewDiscountCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drowAppBar("إنشاء كود خصم جديد", context),
        body: const CreateNewDiscountCodeHome(),
      ),
    );
  }
}

///CreateNewDiscountCodeHome
class CreateNewDiscountCodeHome extends StatefulWidget {
  const CreateNewDiscountCodeHome({Key? key}) : super(key: key);

  @override
  State<CreateNewDiscountCodeHome> createState() =>
      _CreateNewDiscountCodeHomeState();
}

class _CreateNewDiscountCodeHomeState extends State<CreateNewDiscountCodeHome> {
  ///Text Field
  final _formKey = GlobalKey<FormState>();
  final TextEditingController discountCode = TextEditingController();
  final TextEditingController discountValue = TextEditingController();
  final TextEditingController numberOfUsers = TextEditingController();
  final TextEditingController description = TextEditingController();


  static DateTime current = DateTime.now();

  String typeOfDiscount = 'أختر نوع الخصم';

  ///Type of discount drop down list
  var items = [
    'أختر نوع الخصم',
    'نسبي',
    'مئوي',
  ];

  ///discount go to list
  List<String> goTo = ['اعلان', 'اهداء', 'مساحة'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(

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
                      children: [
                        ///Title
                        Container(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h, right: 20.w),
                            child: text(context, "قم بإنشاء كود خصم جديد", 20,
                                ligthtBlack),
                          ),
                        ),

                        ///subTitle
                        Container(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.h, right: 20.w),
                            child: text(
                                context,
                                "يمكنك الان انشاء كود خصم جديد خاص بك يمكنك الان انشاء كود خصم\n جديد خاص بك",
                                12,
                                ligthtBlack),
                          ),
                        ),

                        ///--------------------------Text Field Section--------------------------
                        ///discount code
                        paddingg(
                          15,
                          15,
                          12,
                          textFieldNoIcon(context, 'أدخل كود الخصم', 12, false,
                              discountCode, (String? value) {
                            /// Validation text field
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          }, false),
                        ),
                        ///Type of discount
                        paddingg(
                          15,
                          15,
                          12,
                          Container(
                            decoration: BoxDecoration(
                              color: textFieldBlack2.withOpacity(0.70),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: 45.h,
                              child: DropdownButtonFormField(
                                decoration: InputDecoration.collapsed(
                                  hintText: typeOfDiscount,
                                ),
                                value: typeOfDiscount,
                                dropdownColor: white,
                                icon: paddingg(
                                  15,
                                  15,
                                  12,
                                   Icon(
                                    Icons.keyboard_arrow_down,
                                    color: normalGrey,
                                  ),
                                ),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Container(
                                        child: paddingg(
                                      10,
                                      10,
                                      5,
                                      Text(items),
                                    )),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    typeOfDiscount = newValue!;
                                  });
                                },
                                style: TextStyle(
                                  color: normalGrey,
                                  fontSize: 12.sp,
                                  fontFamily: 'Cairo',
                                ),
                                isExpanded: true,
                              ),
                            ),
                          ),
                        ),

                        ///Value of discount
                        paddingg(
                          15,
                          15,
                          12,
                          textFieldNoIcon(context, 'أدخل قيمة الخصم', 12, false,
                              discountValue, (String? value) {
                            /// Validation text field
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          }, false),
                        ),
                        ///number of users
                        paddingg(
                          15,
                          15,
                          12,
                          textFieldNoIcon(
                              context,
                              'أدخل عدد الاشخاص المستفيدين',
                              12,
                              false,
                              numberOfUsers, (String? value) {
                            /// Validation text field
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          }, false),
                        ),

                        ///description
                        paddingg(
                          15,
                          15,
                          12,
                          textFieldDesc(
                            context,
                            'الوصف الخاص بكود الخصم',
                            12,
                            false,
                            description,
                            (String? value) {
                              /// Validation text field
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),

                        ///Check box
                        SizedBox(
                          height: 15.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            padding(
                                8,
                                20,
                                text(context, 'الخصم الى', 14, black,
                                    fontWeight: FontWeight.bold)),
                            buildCkechboxList(goTo),
                          ],
                        ),
                        ///Determine the Start and end date
                        Container(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 5.h, right: 20.w),
                            child: text(context, "تحديد عدد الايام المتاح بها الكود", 18,
                                ligthtBlack),
                          ),
                        ),
                          Container(
                            alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 20.w,top: 10.h),
                              child: InkWell(
                                child: gradientContainerNoborder2(120,40,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          scheduale,
                                          color: white,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        text(context, 'تاريخ البداية', 15.sp, white, fontWeight: FontWeight.bold),
                                      ],
                                    ),
                                ),
                                onTap: () {
                                  tableCalendar(context, current);
                                },
                              ),
                          ),
                        //end date
                        Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 20.w,top: 10.h),
                          child: InkWell(
                            child: gradientContainerNoborder2(120,40,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      scheduale,
                                      color: white,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    text(context, 'تاريخ النهاية', 15.sp, white, fontWeight: FontWeight.bold),
                                  ],
                                )),
                            onTap: () {
                              tableCalendar(context, current);
                            },
                          ),
                        ),
                        ///Save box
                        Container(
                          margin: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w,bottom: 20.h),
                            child: gradientContainerNoborder(500.w,  buttoms(context, 'حفظ', 15, white, (){})),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
