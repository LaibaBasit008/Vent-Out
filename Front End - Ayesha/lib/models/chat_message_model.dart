import 'package:flutter/material.dart';
import 'dart:ui';

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({@required this.messageContent = '', @required this.messageType=''});
}