import 'package:flutter/material.dart';

class PasswordStrengthWidget extends StatefulWidget {
  TextEditingController controller;
  PasswordStrengthWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  _PasswordStrengthWidgetState createState() => _PasswordStrengthWidgetState();
}

class _PasswordStrengthWidgetState extends State<PasswordStrengthWidget> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 3,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffff0000), //red
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 3,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffffff00), //yellow
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 3,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff00ffff), //blue
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff00ff00), //green
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
