import 'package:flutter/material.dart';
import 'package:test_project/pages/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(



        children: [
          Padding(padding: EdgeInsets.only(left: 0),
          child:  Image.asset("assets/jpg/firstP.jpg" ,
              fit: BoxFit.cover,width:MediaQuery.of(context).size.width)),



          Center(
            child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
              },
              child: Text("QuizApp",style: TextStyle(fontSize: 40,color: Colors.white),),
            ),
          )

        ],

      ),
    );
  }
}
