import 'package:flutter/material.dart';
import 'package:test_project/pages/page4.dart';

import '../test_model.dart';

class Pahe3 extends StatefulWidget {
   Pahe3({ required this.emblima, required this.savolBaza}) ;
  final String emblima;
  List<TestModel>savolBaza;

  @override
  State<Pahe3> createState() => _Pahe3State(emblima,savolBaza);
}

class _Pahe3State extends State<Pahe3> {

  _Pahe3State(this.emblima1, this.savolBaza1);

   final String emblima1;
   List<TestModel>savolBaza1;
   String javobi0='';
   String javobi1='';
   String javobi2='';
   String javobi3='';
   String javobi4='';
   List<String> javobList=[];
   List<String> javobList2=[];
   int for_border_Color=0;
   int for_border_Color1=0;
   int for_border_Color2=0;
   int for_border_Color3=0;
   int for_border_Color4=0;
   PageController controller=PageController();
   int currentPositio=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (num){
          setState(() {
            currentPositio=num;
          });
        },
        children: [
          Stack(
            children: [
              Positioned(child: Container(
                color: Colors.white,
                child: Image.asset(emblima1),
              )),
              Center(

                child: Padding(
                  padding: const EdgeInsets.only(top: 210),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                        ),
                        height: 130,
                        width: 260,
                        child: Center(
                          child: Text(savolBaza1[0].question,style: TextStyle(color: Color(0xFFA76AE4),fontSize: 13),),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi0=savolBaza1[0].answerA;
                            for_border_Color=1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("A",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[0].answerA))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: for_border_Color==1 ?Border.all(color: Colors.red):null,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi0=savolBaza1[0].answerB;
                            for_border_Color=2;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("B",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[0].answerB))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color==2 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi0=savolBaza1[0].answerC;
                            for_border_Color=3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("C",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[0].answerC))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color==3 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi0=savolBaza1[0].answerD;
                            for_border_Color=4;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("D",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[0].answerD))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color==4 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobList.add(javobi0);
                            controller.animateToPage(
                                currentPositio+1,
                                duration: Duration(microseconds: 1500), curve: Curves.linear);
                          });

                        },
                        child: Container(

                          height: 50,
                          width: 130,
                          child: Center(child: Text("Next",style: TextStyle(fontSize: 25),),),
                          decoration: BoxDecoration(
                              color: Color(0xFFA76AE4),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5
                              )]
                          ),),
                      ),

                    ],
                  ),
                ),
              )

             // Container(color: Colors.purpleAccent,),
            ],


          ),  // Page1
          Stack(
            children: [
              Positioned(child: Container(
                color: Colors.white,
                child: Image.asset(emblima1),
              )),
              Center(

                child: Padding(
                  padding: const EdgeInsets.only(top: 210),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                        ),
                        height: 130,
                        width: 260,
                        child: Center(
                          child: Text(savolBaza1[1].question,style: TextStyle(color: Color(0xFFA76AE4),fontSize: 13),),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi1=savolBaza1[1].answerA;
                            for_border_Color1=1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("A",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[1].answerA))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: for_border_Color1==1 ?Border.all(color: Colors.red):null,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi1=savolBaza1[1].answerB;
                            for_border_Color1=2;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("B",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[1].answerB))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color1==2 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi1=savolBaza1[1].answerC;
                            for_border_Color1=3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("C",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[1].answerC))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color1==3 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi1=savolBaza1[1].answerD;
                            for_border_Color1=4;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("D",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[1].answerD))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color1==4 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobList.add(javobi1);
                            controller.jumpToPage(2);
                          });

                        },
                        child: Container(

                          height: 50,
                          width: 130,
                          child: Center(child: Text("Next",style: TextStyle(fontSize: 25),),),
                          decoration: BoxDecoration(
                              color: Color(0xFFA76AE4),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5
                              )]
                          ),),
                      ),

                    ],
                  ),
                ),
              )

             // Container(color: Colors.purpleAccent,),
            ],


          ),   // Page2
          Stack(
            children: [
              Positioned(child: Container(
                color: Colors.white,
                child: Image.asset(emblima1),
              )),
              Center(

                child: Padding(
                  padding: const EdgeInsets.only(top: 210),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                        ),
                        height: 130,
                        width: 260,
                        child: Center(
                          child: Text(savolBaza1[2].question,style: TextStyle(color: Color(0xFFA76AE4),fontSize: 13),),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi2=savolBaza1[2].answerA;
                            for_border_Color2=1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("A",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[2].answerA))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: for_border_Color2==1 ?Border.all(color: Colors.red):null,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi2=savolBaza1[2].answerB;
                            for_border_Color2=2;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("B",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[2].answerB))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color2==2 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi2=savolBaza1[2].answerC;
                            for_border_Color2=3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("C",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[2].answerC))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color2==3 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi2=savolBaza1[2].answerD;
                            for_border_Color2=4;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("D",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[2].answerD))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color2==4 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobList.add(javobi2);
                            controller.jumpToPage(3);
                          });

                        },
                        child: Container(

                          height: 50,
                          width: 130,
                          child: Center(child: Text("Next",style: TextStyle(fontSize: 25),),),
                          decoration: BoxDecoration(
                              color: Color(0xFFA76AE4),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5
                              )]
                          ),),
                      ),

                    ],
                  ),
                ),
              )

             // Container(color: Colors.purpleAccent,),
            ],


          ),   // Page2
          Stack(
            children: [
              Positioned(child: Container(
                color: Colors.white,
                child: Image.asset(emblima1),
              )),
              Center(

                child: Padding(
                  padding: const EdgeInsets.only(top: 210),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                        ),
                        height: 130,
                        width: 260,
                        child: Center(
                          child: Text(savolBaza1[3].question,style: TextStyle(color: Color(0xFFA76AE4),fontSize: 13),),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi3=savolBaza1[3].answerA;
                            for_border_Color3=1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("A",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[3].answerA))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: for_border_Color3==1 ?Border.all(color: Colors.red):null,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi3=savolBaza1[3].answerB;
                            for_border_Color3=2;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("B",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[3].answerB))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color3==2 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi3=savolBaza1[3].answerC;
                            for_border_Color3=3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("C",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[3].answerC))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color3==3 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi3=savolBaza1[3].answerD;
                            for_border_Color3=4;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("D",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[3].answerD))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color3==4 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobList.add(javobi3);
                            controller.jumpToPage(4);
                          });

                        },
                        child: Container(

                          height: 50,
                          width: 130,
                          child: Center(child: Text("Next",style: TextStyle(fontSize: 25),),),
                          decoration: BoxDecoration(
                              color: Color(0xFFA76AE4),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5
                              )]
                          ),),
                      ),

                    ],
                  ),
                ),
              )

             // Container(color: Colors.purpleAccent,),
            ],


          ),   // Page3
          Stack(
            children: [
              Positioned(child: Container(
                color: Colors.white,
                child: Image.asset(emblima1),
              )),
              Center(

                child: Padding(
                  padding: const EdgeInsets.only(top: 210),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                        ),
                        height: 130,
                        width: 260,
                        child: Center(
                          child: Text(savolBaza1[4].question,style: TextStyle(color: Color(0xFFA76AE4),fontSize: 13),),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi4=savolBaza1[4].answerA;
                            for_border_Color4=1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("A",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[4].answerA))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: for_border_Color4==1 ?Border.all(color: Colors.red):null,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi4=savolBaza1[4].answerB;
                            for_border_Color4=2;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("B",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[4].answerB))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color4==2 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi4=savolBaza1[4].answerC;
                            for_border_Color4=3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("C",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[4].answerC))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color4==3 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            javobi4=savolBaza1[4].answerD;
                            for_border_Color4=4;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 260,
                          child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("D",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                  flex: 5,
                                  child: Text(savolBaza1[4].answerD))
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: for_border_Color4==4 ?Border.all(color: Colors.red):null,
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10
                              )]
                          ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(()async {
                            javobList.add(javobi4);
                            if(javobList.length<5){
                              controller.jumpToPage(1);
                            }
                            else {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4(savolBaza1,javobList)));

                            }


                          });

                        },
                        child: Container(

                          height: 50,
                          width: 130,
                          child: Center(child: Text("Next",style: TextStyle(fontSize: 25),),),
                          decoration: BoxDecoration(
                              color: Color(0xFFA76AE4),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5
                              )]
                          ),),
                      ),

                    ],
                  ),
                ),
              )

             // Container(color: Colors.purpleAccent,),
            ],


          ),   // Page3

        ],
      ),

    );
  }


}
