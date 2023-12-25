import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({
    super.key,
    required this.emoticonFace,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Text(
              emoticonFace.toString(),
              style: TextStyle(fontSize: 28.0),
            ),
          ],
        ));
  }
}
