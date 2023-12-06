import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePlay extends StatefulWidget {
  @override
  _GamePlayState createState() => _GamePlayState();
}

class _GamePlayState extends State<GamePlay> {

  bool IsXsTurn = true;
  var dataList;

  @override
  void initState() {
    // TODO: implement initState

    dataList = List.generate(3, (i) => ["0","0","0"], growable: false);
    print("Dinal");
    print(dataList[0][0]);

    super.initState();
  }
  
  double screenWidth = 0.0;
  
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width-40;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                width: 300,
                margin: EdgeInsets.only(bottom: 15, top: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Center(
                    child: Text(
                      IsXsTurn?"X's Turn":"O's Turn",
                      style: GoogleFonts.acme(
                        color: Colors.pink,
                        letterSpacing: 3,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 1.0,
                            offset: Offset(0, 1)
                          )
                        ],
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width: screenWidth,
                height: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[0][0]!="0"?Image.asset(
                                getPath(dataList[0][0].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[0][0] == "0"){
                                dataList[0][0] = IsXsTurn?"x":"o";
                                IsXsTurn = !IsXsTurn;
                              }
                              
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[0][1]!="0"?Image.asset(
                                getPath(dataList[0][1].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[0][1] == "0"){
                                dataList[0][1] = IsXsTurn?"x":"o";
                                IsXsTurn = !IsXsTurn;
                              }
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[0][2]!="0"?Image.asset(
                                getPath(dataList[0][2].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[0][2] == "0"){
                                dataList[0][2] = IsXsTurn?"x":"o";
                              IsXsTurn = !IsXsTurn;
                              }
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[1][0]!="0"?Image.asset(
                                getPath(dataList[1][0].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[1][0] == "0"){
                                dataList[1][0] = IsXsTurn?"x":"o";
                              IsXsTurn = !IsXsTurn;
                              }
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[1][1]!="0"?Image.asset(
                                getPath(dataList[1][1].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[1][1] == "0"){
                                dataList[1][1] = IsXsTurn?"x":"o";
                              IsXsTurn = !IsXsTurn;
                              }
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[1][2]!="0"?Image.asset(
                                getPath(dataList[1][2].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[1][2] == "0"){
                                dataList[1][2] = IsXsTurn?"x":"o";
                              IsXsTurn = !IsXsTurn;
                              }
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[2][0]!="0"?Image.asset(
                                getPath(dataList[2][0].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[2][0] == "0"){
                                dataList[2][0] = IsXsTurn?"x":"o";
                              IsXsTurn = !IsXsTurn;
                              }
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[2][1]!="0"?Image.asset(
                                getPath(dataList[2][1].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[2][1] == "0"){
                                dataList[2][1] = IsXsTurn?"x":"o";
                                IsXsTurn = !IsXsTurn;
                              }
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              width: screenWidth/3,
                              height: screenWidth/3,
                              child: dataList[2][2]!="0"?Image.asset(
                                getPath(dataList[2][2].toString()),
                                height: 125.0,
                                width: 125.0,
                              ):Container(),
                            ),
                            onTap: (){
                              if(dataList[2][2] == "0"){
                                dataList[2][2] = IsXsTurn?"x":"o";
                                IsXsTurn = !IsXsTurn;
                              }
                              checkGameResult();
                              setState(() {

                              });
                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }

  String getPath(data) {
    if(data == "x"){
      return "assets/images/x.gif";
    }else if(data == "o"){
      return "assets/images/o.gif";
    }else{
      return "";
    }
  }

  bool IsGameComplete = false;
  void checkGameResult() {

    if((dataList[0][0] == dataList[0][1]) && (dataList[0][0] == dataList[0][2]) && dataList[0][0] != "0"){
      showWinAlert("Winner", dataList[0][0].toString().toUpperCase()+" is Winner", (){
        Navigator.of(context).pop(false);
        Navigator.pop(context);
      });
    }else if((dataList[0][0] == dataList[1][1]) && (dataList[0][0] == dataList[2][2]) && dataList[0][0] != "0"){
      showWinAlert("Winner", dataList[0][0].toString().toUpperCase()+" is Winner", (){
        Navigator.of(context).pop(false);
        Navigator.pop(context);
      });
    }else if((dataList[0][0] == dataList[1][0]) && (dataList[0][0] == dataList[2][0]) && dataList[0][0] != "0"){
      showWinAlert("Winner", dataList[0][0].toString().toUpperCase()+" is Winner", (){
        Navigator.of(context).pop(false);
        Navigator.pop(context);
      });
    }

    else if((dataList[1][0] == dataList[1][1]) && (dataList[1][0] == dataList[1][2]) && dataList[1][0] != "0"){
      showWinAlert("Winner", dataList[1][0].toString().toUpperCase()+" is Winner", (){
        Navigator.of(context).pop(false);
        Navigator.pop(context);
      });
    }

    else if((dataList[2][0] == dataList[1][1]) && (dataList[2][0] == dataList[0][2]) && dataList[2][0] != "0"){
      showWinAlert("Winner", dataList[2][0].toString().toUpperCase()+" is Winner", (){
        Navigator.of(context).pop(false);
        Navigator.pop(context);
      });
    }else if((dataList[2][0] == dataList[2][1]) && (dataList[2][0] == dataList[2][2]) && dataList[2][0] != "0"){
      showWinAlert("Winner", dataList[2][0].toString().toUpperCase()+" is Winner", (){
        Navigator.of(context).pop(false);
        Navigator.pop(context);
      });
    }

    else if((dataList[0][1] == dataList[1][1]) && (dataList[0][1] == dataList[2][1]) && dataList[0][1] != "0"){
      showWinAlert("Winner", dataList[0][1].toString().toUpperCase()+" is Winner", (){
        Navigator.of(context).pop(false);
        Navigator.pop(context);
      });
    }else if((dataList[0][2] == dataList[1][2]) && (dataList[0][2] == dataList[2][2]) && dataList[0][2] != "0"){
      showWinAlert("Winner", dataList[0][2].toString().toUpperCase()+" is Winner", (){
        Navigator.of(context).pop(false);
        Navigator.pop(context);
      });
    }

    bool IsDrawMatch = true;
    for(var i = 0; i < dataList.length; i++) {
      for(var j = 0; j < dataList[i].length; j++) {
        if(dataList[i][j]=="0"){
          IsDrawMatch = false;
          break;
        }
      }
    }
    if(IsDrawMatch && !IsGameComplete){
      showDrawAlert("Draw Match", "Match Draw");
      return;
    }


  }

//  showWinAlert(String title, String message, method) async {
//    await showDialog(
//        context: context,
//        barrierDismissible: false,
//        builder: (BuildContext context) {
//        return CupertinoAlertDialog(
//          title: Text(title),
//          content: Text('\n$message'),
//          actions: <Widget>[
//            FlatButton(
//              onPressed: method,
//              child: const Text(
//                "Okay",
//                style: TextStyle(fontWeight: FontWeight.bold),
//              )
//            ),
//          ],
//        );
//      },
//    );
//  }

  showDrawAlert(String title, String message) async {
    showDialog(
        barrierDismissible: false,
        context: context,builder: (_) => NetworkGiffyDialog(
        image: Center(
          child: Container(

            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              child: Image.asset('assets/images/no-winner.gif', fit: BoxFit.fitHeight,),
            ),
          ),
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.acme(
              color: Colors.black,
              letterSpacing: 1,
              shadows: [
                Shadow(
                    color: Colors.white,
                    blurRadius: 1.0,
                    offset: Offset(0, 1)
                )
              ],
              fontSize: 22,
              fontWeight: FontWeight.w600
          ),
        ),
        description:Text(
          message + ". Unluckily your match is Draw!!\n\n Thank You, Visit Again.",
          textAlign: TextAlign.center,
          style: GoogleFonts.acme(
            color: Colors.black,
            letterSpacing: 1,
            shadows: [
              Shadow(
                  color: Colors.white,
                  blurRadius: 1.0,
                  offset: Offset(0, 1)
              )
            ],
            fontSize: 15,
          ),
        ),
        entryAnimation: EntryAnimation.DEFAULT,
        onlyOkButton: true,
        buttonOkText: Text(
          "Done",
          style: GoogleFonts.acme(
            color: Colors.white,
            letterSpacing: 1,
            shadows: [
              Shadow(
                  color: Colors.white,
                  blurRadius: 1.0,
                  offset: Offset(0, 1)
              )
            ],
            fontSize: 15,
          ),
        ),
        onOkButtonPressed: (){
          Navigator.of(context).pop(true);
          Navigator.pop(context);
        },
    ) );
  }
  showWinAlert(String title, String message, method) async {
    IsGameComplete = true;
    showDialog(
      barrierDismissible: false,
      context: context,builder: (_) => NetworkGiffyDialog(
        image: Center(
          child: Container(

            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              child: Image.asset('assets/images/winner.gif', fit: BoxFit.fitHeight,),
            ),
          ),
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.acme(
            color: Colors.black,
            letterSpacing: 1,
            shadows: [
              Shadow(
                  color: Colors.white,
                  blurRadius: 1.0,
                  offset: Offset(0, 1)
              )
            ],
            fontSize: 22,
            fontWeight: FontWeight.w600
          ),
        ),
        description:Text(
          message + ". Congratulations On Your WIN!!\n\n Thank You, Visit Again.",
          textAlign: TextAlign.center,
          style: GoogleFonts.acme(
              color: Colors.black,
              letterSpacing: 1,
              shadows: [
                Shadow(
                  color: Colors.white,
                  blurRadius: 1.0,
                  offset: Offset(0, 1)
                )
              ],
              fontSize: 15,
          ),
        ),
        entryAnimation: EntryAnimation.DEFAULT,
        onlyOkButton: true,
        buttonOkText: Text(
          "Done",
          style: GoogleFonts.acme(
            color: Colors.white,
            letterSpacing: 1,
            shadows: [
              Shadow(
                color: Colors.white,
                blurRadius: 1.0,
                offset: Offset(0, 1)
              )
            ],
            fontSize: 15,
          ),
        ),
        onOkButtonPressed: method,
    ) );
  }

}
