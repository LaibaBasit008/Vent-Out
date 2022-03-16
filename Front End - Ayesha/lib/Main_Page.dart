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
import './profile_screen.dart';
import './End_Page.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  /*
   @override initState(){
    readJsonFile();
    super.initState();

  }

  String messageString= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('JSON'),


      ),

      body:Container(
        child: FutureBuilder(
          future:readJsonFile(),
          builder: (BuildContext context, AsyncSnapshot  <List<Message>> messages){
            return ListView.builder(

              itemCount:messages.data?.length,
             itemBuilder: (BuildContext context, int position){
                return ListTile(
                  title:Text(messages.data![position].messageType),
                  subtitle:Text(messages.data![position].messageContent +' haha'+ messages.data![position].id.toString())
                );
             },
            );
          }
        ),
      ),
    );
  }

  Future<List<Message>> readJsonFile() async{
    String myString = await DefaultAssetBundle.of(context).loadString('assets/messageList.json');
    List myMap = jsonDecode(myString);
    List<Message> TextMessages = [];
    myMap.forEach((dynamic textMessage){
      Message myTextMessage = Message.fromJson(textMessage);
      TextMessages.add(myTextMessage);
    });

    return TextMessages;
    //setState(() {
      //messageString = myString;

    //});
  }*/



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

            //Question Mark Icon
            Flexible(
              flex:1,
              child:GestureDetector(
                onTap: () {

                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Delete Conversation'),
                      content: const Text('The entire chat will be deleted. Would you like to continue?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder:  (context) => ThirdPage() )
                            );
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );


                },
                child: Container(

                  child: Align(
                    alignment: Alignment.topRight,
                    child: Tooltip(
                      message:'',
                      child: Icon(
                        Icons.power_settings_new_sharp,
                        size: 45.0,
                        color: Color(0xff67D7E5),

                      ),
                    
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(20),
                      showDuration: Duration(seconds: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff10255F),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      textStyle: TextStyle(color: Colors.white, fontSize: 16),
                      verticalOffset: 6,
                    ),
                  ),


                ),
              ),
            ),

            //Bot Picture
            Flexible(
              flex:5,
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

            Flexible(
              flex:6,
              child:MessageShow(),
            ),
            /*Flexible(
              flex:3,
                child:Column(
                  children: <Widget> [
                   Container(
                    child:Align(
                      alignment: Alignment.topCenter,
                      child:Text('Hey There!',

                            style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize:40,
                            color: Colors.white,
                  //  fontStyle:

                     ),
                           ),

                    ),

                   ),

                  Container(
                    constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                    child:Align(
                      alignment: Alignment.topCenter,
                      child:Text('What would you like to chat about',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize:25,
                            color: Colors.grey,
                            //  fontStyle:

                          )
                      ),

                    ),

                  ),
                ],
            ),),*/


            //mic button
            Visibility(
              visible: isVisible1,
              child: Flexible(
                flex:2,
                child:Container(
                  child: MaterialButton(

                    onPressed: () {},

                    color: Color(0xff3D5BF8),
                    textColor: Colors.white,
                    child: Icon(
                      Icons.mic,
                      size: 45.0,
                    ),
                    padding: EdgeInsets.all(20),
                    shape: CircleBorder(),
                    minWidth: 75,
                    height: 75,
                  ),
                ),
              ),
            ),

            //keyboard text field
            Visibility(
              visible: isVisible2,
              child: Flexible(
                flex:2,
                child:Container(
                  constraints: BoxConstraints( maxWidth: 350,
                    //maxHeight: 40
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child:Stack(
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
                                      isVisible1 = true;
                                      isVisible2 = false;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xff3D5BF8),
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
                                  backgroundColor: Color(0xff3D5BF8),
                                  elevation: 0,
                                ),
                              ],

                            ),
                          ),
                        ),
                      ],
                    ),



                  ),

                ),
              ),
            ),


          ],
        ),

        //floatingAction button to toggle between mic and keybord
        floatingActionButton: Visibility(
          visible: isVisible1,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                isVisible1 = false;
                isVisible2 = true;
              });
            },
            child: const Icon(
              Icons.keyboard,
              size: 40,
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,




      ), );

  }
}
