import 'package:flutter/material.dart';

class Company extends InheritedWidget{  /*You are creating a custom InheritedWidget named Company.InheritedWidget = a widget that shares data down the widget tree efficiently.*/

  final String  cmpName; // Data you want to share globally:cmpName → Company nameempCount → Employee count
  final int empCount;

  const Company({  //Constructor:Accepts data ,Accepts child → the widget subtree that can access this data
    super.key,
    required this.cmpName,
    required this.empCount,
    required super.child
  });

  static Company of(BuildContext context){ //A helper method so we can easily access this widget from anywhere.
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(Company oldWidget){
    return oldWidget.cmpName != cmpName || oldWidget.empCount !=empCount;
  }



}