import 'package:flutter/material.dart';
import 'package:mentalhealthapp/widgtes/categary_view.dart';

import '../widgtes/excersices_tiile.dart';

class CareerEducation extends StatelessWidget {
  const CareerEducation({super.key});

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
                  // top name na dnotification Icon
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
                          ),
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
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
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
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 36.0,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(24.0),topLeft: Radius.circular(24.0))
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Category",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black54),),
                        Icon(Icons.more_horiz,size: 26.0,color: Colors.black54,)
                      ],
                    ),
                    SizedBox(height: 16.0,),
                    // Category
                    Container(
                      child: GridView(
                        shrinkWrap: true,

                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2.0,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12
                      ),
                        children: [
                          CategaryView(backgroundColor: Colors.purple[600], title: "Relationship"),
                          CategaryView(backgroundColor: Colors.blue[300], title: "Career"),
                          CategaryView(backgroundColor: Colors.orange[500], title: "Education"),
                          CategaryView(backgroundColor: Colors.red[500], title: "Other")
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Consultant",style: TextStyle(color: Colors.black54,fontSize: 20.0,fontWeight: FontWeight.bold),),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    SizedBox(height: 10,),
                    // Constalant
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          ExcercisesTile(
                            excerColor: Colors.grey,
                            excercisesTitle: "Bobby Singer",
                            numberOfExcersises: "Education",
                            icon: Icons.person,
                          ),
                          ExcercisesTile(
                            excerColor: Colors.purple.shade300,
                            excercisesTitle: "Dean Winchester",
                            numberOfExcersises: "Education",
                            icon: Icons.person,
                          ),
                          ExcercisesTile(
                            excerColor: Colors.green.shade400,
                            excercisesTitle: "Bobby Singer",
                            numberOfExcersises: "Education",
                            icon: Icons.person,
                          ),
                          ExcercisesTile(
                            excerColor: Colors.blueAccent.shade200,
                            excercisesTitle: "Dean Winchester",
                            numberOfExcersises: "Education",
                            icon: Icons.person,
                          ),
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
