import 'package:flutter/material.dart';
import 'package:lecture_3/home/Home_scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Home_scrren(),
      },
    ),
  );
}