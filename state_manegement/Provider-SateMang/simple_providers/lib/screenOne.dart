import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_providers/Company.dart';

class Screenone extends StatelessWidget {
  const Screenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen one",style: TextStyle(
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
             Text("cmp Name: ${Provider.of<Company>(context).cmpName}",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),

            SizedBox(height: 20,),

            Text("emp Count: ${Provider.of<Company>(context).empCount}",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
      ),
    );
  }
}