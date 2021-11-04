import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  final String title;
  const CustomPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
