import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class S1 extends StatefulWidget {
  const S1({Key? key}) : super(key: key);

  @override
  _S1State createState() => _S1State();
}

class _S1State extends State<S1> {
  bool _showText = false;

  @override
  void initState() {
    super.initState();
    // Start a timer to show text after 3 seconds
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showText = true;
      });
    });
  }

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
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.20),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset("assets/Vector5.png"),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.07),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset("assets/Vector4.png"),
                ),
              ),
              Positioned(
                left: 0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.35),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset("assets/Vector1.png"),
                ),
              ),
              Positioned(
                right: -12,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.35),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset("assets/Vector2.png"),
                ),
              ),
              Positioned(
                left: 0,
                top: 350,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset("assets/Vector3.png"),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_showText) SizedBox(height: 150),
                  if (_showText)
                    Text(
                      'Welcome to',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_showText)
                        Text(
                          ' EVENT ',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromRGBO(65, 13, 146, 1),
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      if (_showText)
                        Text(
                          'portal',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                            ),
                          ),
                        ),
                    ],
                  ),
                  if (_showText) SizedBox(height: 30),
                  if (_showText)
                    TextButton(
                      onPressed: () {},
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [
                              Color.fromRGBO(23, 13, 38, 1),
                              Color.fromRGBO(95, 37, 186, 0.94),
                              Color.fromRGBO(22, 6, 47, 1),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.0, 0.5, 1.0],
                          ).createShader(bounds);
                        },
                        child: Text(
                          'Login to access your account',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Positioned(
                top: 0,
                left: -150,
                child: Lottie.asset(
                  'assets/logo_final2.json',
                  height: 700,
                  width: 700,
                  repeat: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
