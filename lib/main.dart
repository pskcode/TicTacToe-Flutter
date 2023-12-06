import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertictactoe/GamePlay.dart';
import 'package:fluttertictactoe/HomeView.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Tic Tac Toe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Tic Tac Toe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void dispose() {
    super.dispose();

  }

  @override
  void initState() {
    super.initState();


    Timer(Duration(), (){
      setState(() {
        container1 = 200;
        Timer(Duration(milliseconds: 500), (){
          setState(() {
            container1_visible = false;
            container2_visible = true;
          });
        });
      });
    });

    Timer(Duration(seconds: 2), (){
      setState(() {
        container2 = 200;
        Timer(Duration(milliseconds: 500), (){
          setState(() {
            container2_visible = false;
          });
        });
      });
    });

    Timer(Duration(seconds: 3), (){
      setState(() {
        container3 = 200;
      });
    });

    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context,
        MaterialPageRoute(
          builder: (context) => HomeView()//MyAppSocket()//StartUpView()
        )
      );
    });

  }

  double container1 = 0.0;
  bool container1_visible = true;

  double container2 = 0.0;
  bool container2_visible = false;

  double container3 = 0.0;


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black,
                    Colors.pink,
                  ]
              )
          ),
          child: Stack(
            children: [
              Center(
                child: AnimatedOpacity(
                  opacity: container1_visible ? 1.0 : 0.0,
                  duration: Duration(seconds: 1),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    width: container1,
                    height: container1,
                    child: Image.asset('assets/images/x.png'),
                  ),
                ),
              ),
              Center(
                child: AnimatedOpacity(
                  opacity: container2_visible ? 1.0 : 0.0,
                  duration: Duration(seconds: 1),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    width: container2,
                    height: container2,
                    child: Image.asset('assets/images/o.png'),
                  ),
                ),
              ),
              Center(
                child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    width: container3,
                    height: container3+150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            margin: EdgeInsets.only(bottom: 25),
                            child: Image.asset('assets/images/tictaclogo.png'),
                          ),
                          Flexible(
                            child: Text(
                              "Tic Tac Toe",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.acme(
                                color: Colors.pink,
                                fontSize: 35.0,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: Colors.white,
                                      blurRadius: 1.0,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

                ),
              )
            ],
          )
      ),
    );
  }

}

