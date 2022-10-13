import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  String text;
  Success({Key? key, required this.text})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Center(
            child: Text(
              (text + " Successfuly"),
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
