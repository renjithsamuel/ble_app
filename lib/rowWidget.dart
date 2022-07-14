
import 'package:flutter/material.dart';
import 'main.dart';
class alertclass{
  void alertfunc(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        content: Text("Game Over"),
      );
    });
  }
}
