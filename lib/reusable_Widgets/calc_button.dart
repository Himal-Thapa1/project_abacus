import 'package:flutter/material.dart';

Widget calcbutton(String btntxt, Color btncolor, Color txtcolor, Function(String) onButtonClick) {
  return Container(
    child: ElevatedButton(
      onPressed: () {
        onButtonClick(btntxt);
      },
      child: Text(
        btntxt,
        style: TextStyle(
          fontSize: 30,
          color: txtcolor,
        ),
      ),
      style: ButtonStyle(
        // backgroundColor: btncolor,
        backgroundColor: MaterialStatePropertyAll<Color>(btncolor),
        shape: MaterialStatePropertyAll(CircleBorder()),
        padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
      ),
    ),
  );
}

