import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class mobileScreenLayout extends StatelessWidget {
  const mobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: "this is mobile".text.center.make()),
    );
  }
}