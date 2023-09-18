import 'package:flutter/material.dart';

class Helper {
  static final Helper _singleton = Helper._internal();

  factory Helper() {
    return _singleton;
  }

  Helper._internal();

  void navigateToNextScreen(BuildContext context, Widget newScreen) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => newScreen));
  }

  Widget customTextField(double textFieldHeight, String text,
      Color backgroundColor, double cornerRadius, bool isTextAlignmentRight) {
    return SizedBox(
      height: textFieldHeight,
      child: TextField(
        textAlign: isTextAlignmentRight ? TextAlign.right : TextAlign.left,
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor,
          hintText: text,
          hintStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
        ),
      ),
    );
  }

  Widget dropDown(
    Color dropdownBackgroundColor,
    String dropDownValue,
    bool showIconOnRight,
    List<String> items,
    Function(String? newValue) onChanged,
  ) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      decoration: BoxDecoration(
        color: dropdownBackgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          !showIconOnRight
              ? const Icon(
                  Icons.keyboard_arrow_down,
                  size: 15.0,
                )
              : const SizedBox(),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: false,
              value: dropDownValue,
              iconSize: 0.0,
              items: items.map((String itemValue) {
                return DropdownMenuItem(
                  alignment: Alignment.center,
                  value: itemValue,
                  child: Text(
                    itemValue,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          ),
          showIconOnRight
              ? const Icon(
                  Icons.keyboard_arrow_down,
                  size: 15.0,
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget customButton(
      Color buttonBackgroundColor,
      String text,
      String textFont,
      Color textColor,
      FontWeight textFontWeight,
      double textFontSize,
      Color buttonBorderColor,
      double buttonBorderWidth,
      Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.84),
            topRight: Radius.circular(4.84),
            bottomLeft: Radius.circular(4.84),
            bottomRight: Radius.circular(4.84),
          ),
          color: buttonBackgroundColor,
          border:
              Border.all(color: buttonBorderColor, width: buttonBorderWidth),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5.0,
            left: 30.0,
            right: 30.0,
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
    );
  }
}
