import 'package:flutter/material.dart';

class ExcercisesTile extends StatelessWidget {
  final icon;
  final Color excerColor;
  final String excercisesTitle;
  final String numberOfExcersises;

  const ExcercisesTile({
    super.key,
    this.icon,
    required this.excerColor,
    required this.excercisesTitle,
    required this.numberOfExcersises
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: Container(
              decoration: BoxDecoration(
                  color: excerColor,
                  borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(14.0),
              child: Icon(icon,color: Colors.white,size: 30.0,)
          ),
          title: Text(excercisesTitle.toString(),style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black87),),
          subtitle: Text("${numberOfExcersises}",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 14.0),),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.more_horiz),
            ],
          ),
        ),
      ),
    );
  }
}

