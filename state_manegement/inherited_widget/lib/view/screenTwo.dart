import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:inherited_widget/model/company.dart';

class Screentwo extends StatelessWidget {
  const Screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cmp Name: ${Company.of(context).cmpName}",
            style: TextStyle(
              fontSize: 30,
            
            ),
            ),

           SizedBox(height: 30,),

            Text("Emp Count: ${Company.of(context).empCount}",
            style: TextStyle(
              fontSize: 30,
            
            ),
            ),

          ],
        ),
      ),
    );
  }
}