import 'package:flutter/material.dart';

class SpaceFunction extends StatelessWidget {
  const SpaceFunction({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width - 230;
    return SizedBox(width: screenwidth,);
  }
}