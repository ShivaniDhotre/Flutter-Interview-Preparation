

import 'package:flutter/material.dart';
import 'package:inherited_widget/model/company.dart';
import 'package:inherited_widget/view/screenOne.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String cmpName ="Google";
  final int empCount = 250;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Company(
      cmpName: cmpName,
      empCount: empCount,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screenone(),
      ),
    );
  }
}