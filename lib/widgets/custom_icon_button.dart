import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  Function() onTap;
  Icon icon;
  double buttonCornerRadius = 0.0, iconPadding = 0.0, buttonBorderWidth;
  Color buttonBackgroundColor, buttonBorderColor;

  CustomIconButton(
      {Key? key,
      required this.buttonBackgroundColor,
      required this.buttonBorderColor,
      required this.buttonBorderWidth,
      required this.buttonCornerRadius,
      required this.icon,
      required this.iconPadding,
      required this.onTap})
      : super(key: key);

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
          padding: EdgeInsets.all(widget.iconPadding),
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.buttonBorderColor,
              width: widget.buttonBorderWidth,
            ),
            color: widget.buttonBackgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(widget.buttonCornerRadius),
            ),
          ),
          child: widget.icon),
    );
  }
}
