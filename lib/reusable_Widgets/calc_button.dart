import 'package:flutter/material.dart';

Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
  return Container(
    child: ElevatedButton(
      onPressed: () {
        //later adding the function
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
