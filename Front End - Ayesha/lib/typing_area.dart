import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import './profile_screen.dart' as pS;
import 'package:flutter/material.dart';

class typing_area extends StatefulWidget {
  const typing_area({Key? key}) : super(key: key);

  @override
  _typing_areaState createState() => _typing_areaState();
}

class _typing_areaState extends State<typing_area> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
            height: 60,
            // width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),

            child: Row(
              children: <Widget>[

                GestureDetector(
                  onTap: (){
                    setState(() {
                      //isVisible1 = true;
                      //isVisible2 = false;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.mic, color: Colors.white, size: 20, ),
                  ),
                ),

                SizedBox(width: 15,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.send,color: Colors.white,size: 18,),
                  backgroundColor: Colors.blue,
                  elevation: 0,
                ),
              ],

            ),
          ),
        ),
      ],
    );
  }
}
