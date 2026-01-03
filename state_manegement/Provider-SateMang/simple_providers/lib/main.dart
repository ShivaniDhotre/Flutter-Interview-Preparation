
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_providers/Company.dart';
import 'package:simple_providers/mainApp.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Company(cmpName: "Facebook", empCount: 250);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Mainapp() ,
      ),
    );
  }
}