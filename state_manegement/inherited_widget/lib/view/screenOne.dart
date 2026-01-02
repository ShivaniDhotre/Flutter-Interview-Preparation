import 'package:flutter/material.dart';
import 'package:inherited_widget/model/company.dart';
import 'package:inherited_widget/view/screenTwo.dart';

class Screenone extends StatelessWidget {
  const Screenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One",style: TextStyle(
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>Screentwo()
            )
          );
        },
        child: Icon(Icons.keyboard_arrow_right),
        ),
    );
  }
}