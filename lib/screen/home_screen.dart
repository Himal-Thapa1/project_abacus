// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:project_abacus/constants/color.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text(
          "ABACUS",
          style: TextStyle(
            color: white,
            fontSize: 20,
          ),
        ),
        backgroundColor: black,
      ),
    );
  }
}
