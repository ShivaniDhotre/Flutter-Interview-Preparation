import 'package:flutter/material.dart';

class Company with ChangeNotifier{
  String cmpName;
  int empCount;

  Company({required this.cmpName,required this.empCount});

  void changeName(String newName){
    cmpName =newName;
    notifyListeners();
  }
}