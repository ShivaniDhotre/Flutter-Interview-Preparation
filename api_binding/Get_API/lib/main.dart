
import 'package:flutter/material.dart';
import 'package:sample_example/view/user_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:UserScreen (),
    );
  }
}