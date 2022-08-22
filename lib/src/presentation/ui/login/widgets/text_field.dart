import 'package:flutter/material.dart';

class TextFieldLogin extends StatefulWidget {
  TextFieldLogin({
    Key? key,
    required this.nomeTextField,
  }) : super(key: key);

  String? nomeTextField;

  @override
  State<TextFieldLogin> createState() => _TextFieldLoginState();
}

class _TextFieldLoginState extends State<TextFieldLogin> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            decoration: InputDecoration(
                hintText: widget.nomeTextField, border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
