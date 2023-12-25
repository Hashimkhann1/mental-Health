import 'package:flutter/material.dart';
import 'package:mentalhealthapp/view/bottomNavigator.dart';
import 'package:mentalhealthapp/view/home_screen.dart';
import 'package:mentalhealthapp/widgtes/chates_view.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigatorScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: Icon(Icons.arrow_back,color: Colors.white,),
                        ),
                      ),
                      Column(
                        children: [
                          Text("Bobby Singer",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),
                          Text("Online",style: TextStyle(color: Colors.white70),),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(14.0),
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12.0)
                        ),
                        child: Icon(Icons.phone_in_talk,color: Colors.white,),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 34.0),
            Flexible(
              child: Container(
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0),topRight: Radius.circular(24.0)),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0),
                child: Column(
                  children: [
                    Container(
                      width: 52,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    SizedBox(height: 16.0,),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          ChatView(chatTitle: "Hi jasonl how are you?",chatTime: "11:04",isMe: false,),
                          ChatView(chatTitle: "Hi jasonl how are you?",chatTime: "11:04",isMe: true,),
                          ChatView(chatTitle: "Hi jasonl how are you?",chatTime: "11:04",isMe: false,),
                          ChatView(chatTitle: "Hi jasonl how are you?",chatTime: "11:04",isMe: true,),
                          ChatView(chatTitle: "Hi jasonl how are you?",chatTime: "11:04",isMe: false,),
                          ChatView(chatTitle: "Hi jasonl how are you?",chatTime: "11:04",isMe: true,),
                          ChatView(chatTitle: "Hi jasonl how are you?",chatTime: "11:04",isMe: false,),
                          ChatView(chatTitle: "Hi jasonl how are you?",chatTime: "11:04",isMe: true,),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Write your message...'),
                                  Icon(Icons.photo,size: 30,color: Colors.grey[500],)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 6.0,),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.blue[400],
                              ),
                            padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.mic,size: 32,color: Colors.white,)
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




