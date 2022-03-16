import 'dart:async' show StreamSubscription;
import 'package:flutter/foundation.dart';
import'./typing_area.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import'./message_show.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import './message.dart';
import './Main_Page.dart';
import './profile_screen.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {




  bool isVisible1=true;

  // mic button
  bool isVisible2=false; //keyboard icon
  bool isVisible3=false; //mic icon
  bool isEmpty=false;

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Color(0xff001242),
        body: Column(
          children: <Widget>[

            Flexible(
              flex:1,
              child:Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                ),
              ),
            ),

            Flexible(
              flex:7,
              child:Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Text('This chat has ended',
                        textAlign: TextAlign.center,
                        style: TextStyle(

                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 40,
                        ),
                      ),
                    )
                  ),
                )
              ),
            ),

            Flexible(
              flex:1,
              child:Container(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Thank you for chating with me',

                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize:20,
                            color: Colors.white,
                            //  fontStyle:

                          ),
                        ),
                    ),
                  )
              ),
            ),


            Flexible(
              flex:1,
              child:Container(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('I hope that u are feeling much better now.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:20,
                              color: Colors.grey,
                              //  fontStyle:

                            )
                        ),

                    ),
                  )
              ),
            ),



            //Bot Picture
            Flexible(
              flex:7,
              child:Container(

                child: Align(
                  alignment: Alignment.topCenter,
                  child:Padding(

                    padding: EdgeInsets.all(0),

                    child:Image.asset(
                      'assets/avatar - Copy - Copy.jpg',
                      fit:BoxFit.fitWidth,

                    ),
                  ),


                ),
              ),
            ),

            //Text written after bot picture
/*
            Flexible(
              flex:6,
              child:MessageShow(),
            ),


 */



            //mic button
               Flexible(
                flex:2,
                child:Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: MaterialButton(

                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);

                      },

                      color: Color(0xff001242),
                      textColor: Colors.white,

                      child: Text('Home Page',

                        style:TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          decoration:TextDecoration.underline,
                        ),
                      ),
                      padding: EdgeInsets.all(20),

                      minWidth: 150,
                      height: 75,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        //   side: BorderSide(color: Colors.red)
                      )

                  ),
                ),
              ),




          ],
        ),
  ),

    );


  }
}
