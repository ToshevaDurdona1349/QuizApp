import 'package:flutter/material.dart';

import '../test_model.dart';

class Page4 extends StatelessWidget {
  const Page4(this.savolBaza2, this.javobList2) ;
  final  List<TestModel>savolBaza2;
  final List<String> javobList2;


  @override
  Widget build(BuildContext context) {
    int togri=0;
    for(int i=0;i<savolBaza2.length; i++){
      if(savolBaza2[i].correctAnswer==javobList2[i]){
        togri++;
      }


    }
    savolBaza2.forEach((element) {
      print(element.correctAnswer);
    });
    javobList2.forEach((element) {
      print(element);
    });

    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Container(
            child: Image.asset("assets/png/compback.png")
          )),
          Positioned(
              top: 460,
              left: 30,
              child: Container(
            child: Image.asset("assets/png/comodam.png")
          )),
          Center(child: Text("Completed \n      ${togri}/${savolBaza2.length}",style: TextStyle(fontSize: 25,color: Colors.white),),)
        ],
      ),
    );
  }
}
