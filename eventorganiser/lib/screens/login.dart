import 'package:flutter/material.dart';

class S1 extends StatelessWidget {
  const S1({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(158, 113, 230, 0.8),
                Color.fromRGBO(146, 101, 218, 1),
                Color.fromRGBO(96, 45, 176, 1),
              ],
            ),
          ),
          child: Stack(
            children: [],
          ),
        ),
      ),
    );
  }
}
