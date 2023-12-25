import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  ChatView({super.key, this.chatTime, this.chatTitle, required this.isMe});
  String? chatTitle;
  String? chatTime;
  bool isMe;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        width: 220,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            color: isMe ? Colors.blue[400] : Colors.white,
            borderRadius: isMe
                ? BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(1),
                    bottomLeft: Radius.circular(20))
                : BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(1),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
        child: Row(
          children: [
            Text(
              chatTitle.toString(),
              style: TextStyle(color: isMe ? Colors.white : Colors.black),
            ),
            Text(chatTime.toString(),
                style: TextStyle(color: isMe ? Colors.white : Colors.black)),
          ],
        ),
      ),
    );
  }
}
