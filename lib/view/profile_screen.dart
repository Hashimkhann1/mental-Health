import 'package:flutter/material.dart';
import 'package:mentalhealthapp/widgtes/excersices_tiile.dart';
import 'package:mentalhealthapp/widgtes/profile_option_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 70.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 36.0,backgroundImage: AssetImage('images/profile.jpg'),),
                    SizedBox(width: 8,),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("M Hashim",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white70),),
                        SizedBox(height: 6,),
                        Text("Flutter Developer and Pentenster",style: TextStyle(color: Colors.white70),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Follower",style: TextStyle(color: Colors.white70,fontSize: 16.0),),
                        Text("1654",style: TextStyle(color: Colors.white70,fontSize: 20.0,fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Following",style: TextStyle(color: Colors.white70,fontSize: 16.0),),
                        Text("1864",style: TextStyle(color: Colors.white70,fontSize: 20.0,fontWeight: FontWeight.bold)),
                      ],
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        side: BorderSide(
                          color: Colors.white70,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        )
                      ),
                        onPressed: null,
                        child: Text("Edit Profile",style: TextStyle(color: Colors.white70),))
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0))
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0,),
                  Text("My Info",style: TextStyle(color: Colors.black54,fontSize: 20.0,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.0,),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: ListTile(
                      leading: Icon(Icons.email_outlined),
                      title: Text("mygmail@gmail.com",style: TextStyle(color: Colors.black54),),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("0313-0000000",style: TextStyle(color: Colors.black54),),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("My address is here",style: TextStyle(color: Colors.black54),),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: ListTile(
                      leading: Icon(Icons.monetization_on_outlined),
                      title: Text("Bank Detail",style: TextStyle(color: Colors.black54),),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://img.icons8.com/color/48/facebook-new.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://img.icons8.com/ios-filled/50/twitterx--v1.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://img.icons8.com/color/48/linkedin.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://img.icons8.com/color/48/instagram-new--v1.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
