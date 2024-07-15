import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textinputtype;
  const InputField({
    super.key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.textinputtype,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          gapPadding: 5.0,
        ),
      ),
      obscureText: isPass,
      keyboardType: textinputtype,
    );
  }
}
