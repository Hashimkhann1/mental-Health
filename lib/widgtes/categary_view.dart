import 'package:flutter/material.dart';

class CategaryView extends StatelessWidget {

  CategaryView({super.key,required this.backgroundColor,required this.title});
  String? title;
  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(14.0)
      ),
      alignment: Alignment.center,
      child: Text(title.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.white),),
    );
  }
}
