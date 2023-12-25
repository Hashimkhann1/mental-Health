import 'package:flutter/material.dart';
import 'package:mentalhealthapp/widgtes/excersices_tiile.dart';

import '../widgtes/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Jared!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "21 Dec, 2023",
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12.0)),
                    padding: EdgeInsets.all(14.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  // How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  // 4 differnt faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Badly
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😔',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Badly',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // Fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // Well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😁',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //Execalent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😃',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Execlant',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0)),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    //Excercises heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Excercises',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // list view of excercises
                    Expanded(
                        child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        ExcercisesTile(
                          excerColor: Colors.orange,
                          excercisesTitle: "Speaking Skills",
                          numberOfExcersises: "16 Excercises",
                          icon: Icons.favorite,
                        ),
                        ExcercisesTile(
                          excerColor: Colors.green,
                          excercisesTitle: "Reading Speed",
                          numberOfExcersises: "8 Excercises",
                          icon: Icons.person,
                        ),
                        ExcercisesTile(
                          excerColor: Colors.pink,
                          excercisesTitle: "Writing Skills",
                          numberOfExcersises: "10 Excercises",
                          icon: Icons.star,
                        ),
                        ExcercisesTile(
                          excerColor: Colors.blueAccent,
                          excercisesTitle: "Listing Skills",
                          numberOfExcersises: "12 Excercises",
                          icon: Icons.egg_alt,
                        ),
                      ],
                    ))
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