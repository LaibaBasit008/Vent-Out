// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import'./profile_screen.dart';

void main() {
  runApp(myApp());

}

class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

        home: FirstPage()
      ,);

  }

}