import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_providers/Company.dart';
import 'package:simple_providers/screenOne.dart';

class Mainapp extends StatefulWidget {
  const Mainapp({super.key});

  @override
  State<Mainapp> createState() => _MainappState();
}

class _MainappState extends State<Mainapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Demo",style: TextStyle(
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
            SizedBox(height: 40,),

            ElevatedButton(
              onPressed: (){
                Provider.of<Company>(
                  context,
                  listen: false,

                  ).changeCmpName("Meta");

            }, child: Text("Change Name",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),))


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>Screenone())
          );
      },child: Icon(Icons.keyboard_arrow_right),),
    );
  }
}