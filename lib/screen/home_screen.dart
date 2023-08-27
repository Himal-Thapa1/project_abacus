// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_abacus/calculator_brain/brain.dart';
import 'package:project_abacus/constants/color.dart';
import 'package:project_abacus/reusable_Widgets/calc_button.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  CalculatorBrain _calculatorBrain = CalculatorBrain();
  String input = "";
  String output = "";

  void onButtonClick(String value) {
    setState(() {
      if (value == "AC") {
        input = "";
        output = "";
      } else if (value == "<") {
        if (input.isNotEmpty) {
          input = input.substring(0, input.length - 1);
        }
      } else if (value == "=") {
        output = _calculatorBrain.calculate(input);
  //     } else if (value == "%") {
  //       if (input.isNotEmpty) {
  // // Calculate the percentage value
  //         double? inputValue = double.tryParse(input);
  //         double percentageValue = inputValue! / 100.0;
  //         input = percentageValue.toString();
  //         output = input; // Display the percentage value in output immediately
  //       }
      } 
  else {
        input += value;
      }
    });
  }
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(padding: EdgeInsets.all(10.0)),
                    Text(
                      input,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: white,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      output,
                      style: TextStyle(
                        color: white,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: white,
                height: 10,
                thickness: 5,
                indent: 25,
                endIndent: 25,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('AC', Colors.grey, black, onButtonClick),
                  calcbutton('<', Colors.grey, black, onButtonClick),
                  calcbutton('%', Colors.grey, black, onButtonClick),
                  calcbutton('/', accentColor, white, onButtonClick),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('7', Colors.grey, black, onButtonClick),
                  calcbutton('8', Colors.grey, black, onButtonClick),
                  calcbutton('9', Colors.grey, black, onButtonClick),
                  calcbutton('X', accentColor, white, onButtonClick),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('4', Colors.grey, black, onButtonClick),
                  calcbutton('5', Colors.grey, black, onButtonClick),
                  calcbutton('6', Colors.grey, black, onButtonClick),
                  calcbutton('-', accentColor, white, onButtonClick),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('1', Colors.grey, black, onButtonClick),
                  calcbutton('2', Colors.grey, black, onButtonClick),
                  calcbutton('3', Colors.grey, black, onButtonClick),
                  calcbutton('+', accentColor, white, onButtonClick),
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
                      onButtonClick("0");
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
                  calcbutton('.', Colors.grey, white, onButtonClick),
                  calcbutton("=", Colors.grey, white, onButtonClick),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
