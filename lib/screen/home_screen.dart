// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_abacus/constants/color.dart';
import 'package:project_abacus/reusable_Widgets/calc_button.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          title: Text(
            "ABACUS",
            style: GoogleFonts.itim(
              textStyle: TextStyle(
                color: white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: black,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(padding: EdgeInsets.all(10.0)),
                    Text(
                      "0",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: white,
                        fontSize: 90,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: white,
                height: 10,
                thickness: 5,
                indent: 25,
                endIndent: 25,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('AC', Colors.grey, black),
                  calcbutton('+/-', Colors.grey, black),
                  calcbutton('%', Colors.grey, black),
                  calcbutton('/', accentColor, white),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('7', Colors.grey, black),
                  calcbutton('8', Colors.grey, black),
                  calcbutton('9', Colors.grey, black),
                  calcbutton('X', accentColor, white),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('4', Colors.grey, black),
                  calcbutton('5', Colors.grey, black),
                  calcbutton('6', Colors.grey, black),
                  calcbutton('-', accentColor, white),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('1', Colors.grey, black),
                  calcbutton('2', Colors.grey, black),
                  calcbutton('3', Colors.grey, black),
                  calcbutton('+', accentColor, white),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //later wii add the function
                    },
                    child: Text(
                      "0",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 30,
                        color: white,
                        
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.grey),
                      shape: MaterialStatePropertyAll(StadiumBorder()),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.fromLTRB(30, 14, 128, 14)),
                    ),
                  ),
                  calcbutton('.', Colors.grey, white),
                  calcbutton("=", Colors.grey, white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
