import 'package:flutter/material.dart';

class MyTextField extends TextField {
  const MyTextField({Key? key}) : super(key: key);
  @override
  // TODO: implement decoration
  InputDecoration? get decoration => InputDecoration(
        border: const OutlineInputBorder(),
      );
}
