import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:fluttertictactoe/GamePlay.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {

  int _behaviourIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [

            AnimatedBackground(
//            behaviour: ChildFlySpaceBehaviour(),
              behaviour: _buildBehaviourO(),
              vsync: this,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TypewriterAnimatedTextKit(
                        text: [
                          "Tic Tac Toe",
                          "Play It",
                          "Win It"
                        ],
                        textStyle: GoogleFonts.acme(
                          color: Colors.pink,
                          fontSize: 40.0,
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
                        textAlign: TextAlign.center,
                      ),
                    ),

                    AvatarGlow(
                      startDelay: Duration(milliseconds: 0),
                      glowColor: Colors.white,
                      endRadius: 130.0,
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, // BoxShape.circle or BoxShape.retangle
                            //color: const Color(0xFF66BB6A),
                            boxShadow: [BoxShadow(
                              color: Colors.white,
                              blurRadius: 10.0,
                            ),]
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>GamePlay()
                            ));
                          },
                          elevation: 20.0,
                          shape: CircleBorder(),
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(160.0)),
                            child: Text(
                              "Play",
                              style: GoogleFonts.acme(
                                color: Colors.white,
                                fontSize: 33.0,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w800,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      blurRadius: 1.0,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }

  var particlePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.0;

  ParticleOptions particleOptionsO = ParticleOptions(
    image: Image.asset('assets/images/o.png'),
    baseColor: Colors.blue,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 70.0,
    spawnMinRadius: 7.0,
    spawnMaxRadius: 15.0,
    particleCount: 40,
  );

  Behaviour _buildBehaviourO() {
    return RandomParticleBehaviour(
      options: particleOptionsO,
      paint: particlePaint,
    );
  }

}
