import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_project/widgets/custom_icon_button.dart';

import '../Helper/Helper.dart';

class AddOrder2 extends StatefulWidget {
  const AddOrder2({Key? key}) : super(key: key);

  @override
  State<AddOrder2> createState() => _AddOrder2State();
}

class _AddOrder2State extends State<AddOrder2> {
  Helper helperClass = Helper();
  List<String> listItems = [
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
    "منی ریفریجریٹر",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 4.0, bottom: 4.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "حسن گلاس",
                      style: TextStyle(
                        fontFamily: "UrduFont",
                        color: Color(0xFF002500),
                        fontWeight: FontWeight.w400,
                        fontSize: 40.0,
                      ),
                    ),
                    Text(
                      "00000",
                      style: TextStyle(
                        fontFamily: "Poppins-Regular",
                        color: Color(0xFF002500),
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      "عمیر اقبال",
                      style: TextStyle(
                        fontFamily: "UrduFont",
                        color: Color(0xFF002500),
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
                  color: const Color(0xFF002500),
                  height: 1.0,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      buttonBackgroundColor: const Color(0xFF002500),
                      buttonBorderColor: const Color(0xFF1A535C),
                      buttonBorderWidth: 2.0,
                      buttonCornerRadius: 10.0,
                      icon: const Icon(
                        Icons.connect_without_contact,
                        color: Colors.white,
                      ),
                      iconPadding: 10.0,
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Tap'),
                          ),
                        );
                      },
                    ),
                    CustomIconButton(
                      buttonBackgroundColor: const Color(0xFF002500),
                      buttonBorderColor: const Color(0xFF1A535C),
                      buttonBorderWidth: 2.0,
                      buttonCornerRadius: 10.0,
                      icon: const Icon(
                        Icons.connect_without_contact,
                        color: Colors.white,
                      ),
                      iconPadding: 10.0,
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Tap'),
                          ),
                        );
                      },
                    ),
                    CustomIconButton(
                      buttonBackgroundColor: const Color(0xFF002500),
                      buttonBorderColor: const Color(0xFF1A535C),
                      buttonBorderWidth: 2.0,
                      buttonCornerRadius: 10.0,
                      icon: const Icon(
                        Icons.connect_without_contact,
                        color: Colors.white,
                      ),
                      iconPadding: 10.0,
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Tap'),
                          ),
                        );
                      },
                    ),
                    CustomIconButton(
                      buttonBackgroundColor: const Color(0xFF002500),
                      buttonBorderColor: const Color(0xFF1A535C),
                      buttonBorderWidth: 2.0,
                      buttonCornerRadius: 10.0,
                      icon: const Icon(
                        Icons.connect_without_contact,
                        color: Colors.white,
                      ),
                      iconPadding: 10.0,
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Tap'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Column(
                    children: listItems
                        .map((e) => Container(
                              margin: const EdgeInsets.only(
                                bottom: 10.0,
                              ),
                              child: listItem(
                                Icons.add,
                                Icons.safety_check,
                                const Color(0xFF002500),
                                const Color(0xFF002500),
                                Colors.white,
                                Colors.white,
                                const Color(0xFF1A535C),
                                4.84,
                                const Color(0xFF002500),
                                2.0,
                                e,
                                "UrduFont",
                                Colors.white,
                                FontWeight.w400,
                                28.0,
                                leftIconTap: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('left icon clicked'),
                                    ),
                                  );
                                },
                                rightIconTap: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('right icon clicked'),
                                    ),
                                  );
                                },
                              ),
                            ))
                        .toList(),
                  ),
                  // child: ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: listItems.length,
                  //   itemBuilder: (context, i) {
                  //     return Container(
                  //       margin: const EdgeInsets.only(
                  //         bottom: 10.0,
                  //       ),
                  //       child: listItem(
                  //         Icons.add,
                  //         Icons.minimize,
                  //         const Color(0xFF002500),
                  //         const Color(0xFF002500),
                  //         Colors.white,
                  //         Colors.white,
                  //         const Color(0xFF1A535C),
                  //         4.84,
                  //         const Color(0xFF002500),
                  //         2.0,
                  //         listItems[i],
                  //         "UrduFont",
                  //         Colors.white,
                  //         FontWeight.w400,
                  //         28.0,
                  //         leftIconTap: () {},
                  //         rightIconTap: () {},
                  //       ),
                  //     );
                  //   },
                  // ),
                ),
                const SizedBox(
                  height: 5.0,
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
                          color: Color(0xFF002500),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF002500),
                          width: 2.0,
                        ),
                      ),
                    ),
                    maxLines: 5,
                    minLines: 5,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                helperClass.customButton(
                  const Color(0xFF002500),
                  "واپس",
                  "UrduFont",
                  Colors.white,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listItem(
    IconData leftIcon,
    IconData rightIcon,
    Color leftIconBackgroundColor,
    Color rightIconBackgroundColor,
    Color leftIconColor,
    Color rightIconColor,
    Color textBackgroundColor,
    double textBoxCornerRadius,
    Color textBoxBorderColor,
    double textBoxBorderWidth,
    String text,
    String textFont,
    Color textColor,
    FontWeight textFontWeight,
    double textFontSize, {
    required Function() leftIconTap,
    required Function() rightIconTap,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipOval(
          child: Material(
            color: leftIconBackgroundColor, // Button color
            child: InkWell(
              onTap: leftIconTap,
              child: SizedBox(
                width: 30.0,
                height: 30.0,
                child: Center(
                  child: Icon(
                    leftIcon,
                    size: 20.0,
                    color: leftIconColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: textBackgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(textBoxCornerRadius),
              ),
              border: Border.all(
                color: textBoxBorderColor,
                width: textBoxBorderWidth,
              ),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: textFont,
                color: textColor,
                fontWeight: textFontWeight,
                fontSize: textFontSize,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        ClipOval(
          child: Material(
            color: rightIconBackgroundColor, // Button color
            child: InkWell(
              onTap: rightIconTap,
              child: SizedBox(
                width: 30.0,
                height: 30.0,
                child: Center(
                  child: Icon(
                    rightIcon,
                    size: 20.0,
                    color: rightIconColor,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
