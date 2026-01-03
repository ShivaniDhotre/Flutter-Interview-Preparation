
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiprovider_consumer/Company.dart';
import 'package:multiprovider_consumer/employee.dart';
import 'package:multiprovider_consumer/mainApp.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context){
            return Employee(empId: 17, empName: "Shivani");
          }),
          ChangeNotifierProvider(
            create: (context){
              return Company(cmpName: "Facebook", empCount: 250);
            })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Mainapp() ,
      ),
    );
  }
}