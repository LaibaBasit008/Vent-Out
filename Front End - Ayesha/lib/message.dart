class Message{
   late int id;
   late String messageType;
   late String messageContent;

   Message.fromJson(Map<String,dynamic> json){

     this.id = json['id'];
     this.messageType = json['messageType'];
     this.messageContent = json['messageContent'];


   }
}


