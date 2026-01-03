import 'package:flutter/material.dart';
import 'package:multiprovider_consumer/Company.dart';
import 'package:multiprovider_consumer/employee.dart';
import 'package:multiprovider_consumer/screenOne.dart';
import 'package:provider/provider.dart';

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
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Company>(
            builder: (context,value,child){
              return Text(
                "cmp Name:${value.cmpName}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              );
            },
            ),

            SizedBox(height: 20,),
            Text(
              "Emp Cnt:${Provider.of<Company>(context).empCount}",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 30,),

             Text(
              "Employee Name:${Provider.of<Employee>(context).empName}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
             ),

             SizedBox(height: 20,),

             Text(
              "Employee Id:${Provider.of<Employee>(context).empId}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
             ),

              SizedBox(height: 20,),

    ElevatedButton(
     onPressed: (){
          Provider.of<Company>(context,listen: false).changeName("Meta");
     }, child: Text("Change Number",style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold
     ),))

        ],
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>Screenone())
            );
        },child: Icon(Icons.keyboard_arrow_right),),
    );
  }
}