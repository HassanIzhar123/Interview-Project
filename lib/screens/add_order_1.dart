import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_project/Helper/Helper.dart';

import '../widgets/custom_switch.dart';
import 'add_order_2.dart';

class AddOrder1 extends StatefulWidget {
  const AddOrder1({super.key});

  @override
  State<AddOrder1> createState() => _AddOrder1State();
}

class _AddOrder1State extends State<AddOrder1> {
  bool _switchValue = true, checkBoxValue = true;
  String takDropDownValue = 'کب تک 1';
  List<String> takItems = [
    'کب تک 1',
    'کب تک 2',
    'کب تک 3',
    'کب تک 4',
    ' کب تک 5',
  ];
  String qismDropDownValue = 'کب تک 1';
  List<String> qismItems = [
    'کب تک 1',
    'کب تک 2',
    'کب تک 3',
    'کب تک 4',
    ' کب تک 5',
  ];
  String qism2DropDownValue = 'کب تک 1';
  List<String> qism2Items = [
    'کب تک 1',
    'کب تک 2',
    'کب تک 3',
    'کب تک 4',
    ' کب تک 5',
  ];
  String paiseyDropDownValue = 'Item 1';
  List<String> paiseyItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  Helper helperClass = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 4.0, bottom: 4.0),
          color: const Color(0xFF002500),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "حسن گلاس",
                      style: TextStyle(
                        fontFamily: "UrduFont",
                        color: Color(0xFF6AFB92),
                        fontWeight: FontWeight.w400,
                        fontSize: 40.0,
                      ),
                    ),
                    Text(
                      "00000",
                      style: TextStyle(
                        fontFamily: "Poppins-Regular",
                        color: Color(0xFF6AFB92),
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      "عمیر اقبال",
                      style: TextStyle(
                        fontFamily: "UrduFont",
                        color: Color(0xFF6AFB92),
                        fontWeight: FontWeight.w400,
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  color: const Color(0xFF6AFB92),
                  height: 1.0,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                textFieldRow(
                  "نام",
                  "UrduFont",
                  const Color(0xFF6AFB92),
                  FontWeight.w400,
                  36.0,
                  55.0,
                  "نام",
                  const Color(0xFF66FF00),
                  10.0,
                  true,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                textFieldRow(
                  "فون نمبر",
                  "UrduFont",
                  const Color(0xFF6AFB92),
                  FontWeight.w400,
                  36.0,
                  15.0,
                  "فون نمبر",
                  const Color(0xFF66FF00),
                  10.0,
                  true,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                spinnerRow(),
                const SizedBox(
                  height: 15.0,
                ),
                switchRow(),
                const SizedBox(
                  height: 15.0,
                ),
                weightedLayout(),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  "سامان",
                  style: TextStyle(
                    fontFamily: "UrduFont",
                    color: Color(0xFF6AFB92),
                    fontWeight: FontWeight.w400,
                    fontSize: 40.0,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 50.0,
                        right: 50.0,
                      ),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: double.infinity,
                        ),
                        child: helperClass.customButton(
                          Colors.white,
                          "سامان داخل کریں",
                          "UrduFont",
                          const Color(0xFF002500),
                          FontWeight.w400,
                          28.0,
                          const Color(0xFF002500),
                          2.0,
                          () {
                            helperClass.navigateToNextScreen(
                              context,
                              const AddOrder2(),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 50.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: const Color(0xFF6AFB92),
                            ),
                            child: Transform.scale(
                              scale: 2.5,
                              child: Checkbox(
                                activeColor: const Color(0xFF6AFB92),
                                checkColor: Colors.black,
                                value: checkBoxValue,
                                onChanged: (bool? value) {
                                  setState(
                                    () {
                                      if (value != null) {
                                        checkBoxValue = value;
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25.0,
                          ),
                          Expanded(
                            child: helperClass.customTextField(
                              50.0,
                              "پیسے",
                              const Color(0xFF6AFB92),
                              10.0,
                              true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    initialValue: "ایمیل خود را وارد کنید",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 26.0,
                      fontFamily: "UrduFont",
                    ),
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF114B1F),
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6AFB92),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6AFB92),
                          width: 2.0,
                        ),
                      ),
                    ),
                    maxLines: 5,
                    minLines: 5,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                helperClass.customButton(
                  Colors.white,
                  "آرڈر درج کریں",
                  "UrduFont",
                  const Color(0xFF002500),
                  FontWeight.w400,
                  36.0,
                  const Color(0xFF1A535C),
                  2.0,
                  () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Tap'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget spinnerRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          flex: 1,
          child: helperClass.dropDown(
              const Color(0xFF66FF00),
              takDropDownValue,
              false,
              takItems,
              (newValue) => () {
                    setState(() {
                      takDropDownValue = newValue!;
                    });
                  }),
        ),
        const SizedBox(
          width: 50.0,
        ),
        const Text(
          "تک",
          style: TextStyle(
            fontFamily: "UrduFont",
            color: Color(0xFF6AFB92),
            fontWeight: FontWeight.w400,
            fontSize: 36.0,
          ),
        ),
      ],
    );
  }

  Widget switchRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomSwitch(
          _switchValue,
          const Color(0xFF7FFB8D),
          const Color(0xFF7FFB8D),
          60.0,
          30.0,
          20.0,
          20.0,
          const Color(0xFF002500),
          (bool val) {
            setState(() {
              _switchValue = val;
            });
          },
        ),
        const SizedBox(
          width: 15.0,
        ),
        const Text(
          "مقررہ قیمت",
          style: TextStyle(
            fontFamily: "UrduFont",
            color: Color(0xFF6AFB92),
            fontWeight: FontWeight.w400,
            fontSize: 36.0,
          ),
        ),
      ],
    );
  }

  Widget weightedLayout() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              const Text(
                "گاڑی کی قسم",
                style: TextStyle(
                  fontFamily: "UrduFont",
                  color: Color(0xFF6AFB92),
                  fontWeight: FontWeight.w400,
                  fontSize: 40.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              helperClass.dropDown(
                  const Color(0xFF6AFB92), qismDropDownValue, true, qismItems,
                  (String? newValue) {
                setState(() {
                  qismDropDownValue = newValue!;
                });
              }),
              const SizedBox(
                height: 10.0,
              ),
              helperClass.dropDown(
                  const Color(0xFF6AFB92), qism2DropDownValue, true, qism2Items,
                  (String? newValue) {
                setState(() {
                  qism2DropDownValue = newValue!;
                });
              }),
            ],
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "دکان کے پیسے",
                style: TextStyle(
                  fontFamily: "UrduFont",
                  color: Color(0xFF6AFB92),
                  fontWeight: FontWeight.w400,
                  fontSize: 40.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              helperClass.customTextField(
                50.0,
                "پیسے",
                const Color(0xFF6AFB92),
                10.0,
                true,
              ),
              const SizedBox(
                height: 10.0,
              ),
              helperClass.dropDown(const Color(0xFF6AFB92), paiseyDropDownValue,
                  true, paiseyItems, (String? newValue) {
                setState(() {
                  paiseyDropDownValue = newValue!;
                });
              }),
            ],
          ),
        ),
      ],
    );
  }

  Widget textFieldRow(
      String textViewText,
      String textViewFont,
      Color textViewColor,
      FontWeight textViewFontWeight,
      double textViewFontSize,
      double betweenWidth,
      String textFieldText,
      Color backgroundColor,
      double cornerRadius,
      bool isTextAlignmentRight) {
    return Row(
      children: [
        Expanded(
          child: helperClass.customTextField(
            50.0,
            textFieldText,
            backgroundColor,
            cornerRadius,
            isTextAlignmentRight,
          ),
        ),
        SizedBox(
          width: betweenWidth,
        ),
        Text(
          textViewText,
          style: TextStyle(
            fontFamily: textViewFont,
            color: textViewColor,
            fontWeight: textViewFontWeight,
            fontSize: textViewFontSize,
          ),
        ),
      ],
    );
  }
}
