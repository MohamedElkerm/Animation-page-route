import 'package:animation/animation/animation_route.dart';
import 'package:animation/modules/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => Page1State();
}

class Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(SlideByFadeTransition(page: Page2()));
            },
            child:const Text('Fade Transition'),
          ),
        ),
      ),
    );
  }
}
