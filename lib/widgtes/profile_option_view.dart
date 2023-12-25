import 'package:flutter/material.dart';

class ProfileOptionView extends StatelessWidget {
  ProfileOptionView({super.key,this.icon});
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[700],
          borderRadius: BorderRadius.circular(27.0)
      ),
      padding: EdgeInsets.all(15.0),
      child: Icon(icon,color: Colors.white,),
    );
  }
}
