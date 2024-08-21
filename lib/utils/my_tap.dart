import 'package:flutter/material.dart';

class MyTAb extends StatelessWidget {
  const MyTAb({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        
      ),
    );
  }
}
