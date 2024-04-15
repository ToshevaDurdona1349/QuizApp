import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:test_project/pages/page3.dart';

import '../test_model.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<TestModel> cppQuestions = [
    TestModel(
      question: 'What does the ++ mean in C++?',
      answerA: 'Increase',
      answerB: 'Compile',
      answerC: 'Coded',
      answerD: 'Controller',
      correctAnswer: 'Increase',
    ),
    TestModel(
      question: 'Who developed C++?',
      answerA: 'Dennis Richie',
      answerB: 'James Gosling',
      answerC: 'Steve Jobs',
      answerD: 'Bjarne Stroustrup',
      correctAnswer: 'Bjarne Stroustrup',
    ),
    TestModel(
      question: 'What does STL stand for in C++?',
      answerA: 'Standard Template Library',
      answerB: 'System Transaction List',
      answerC: 'System Template Library',
      answerD: 'Stack Transactional List',
      correctAnswer: 'Standard Template Library',
    ),
    TestModel(
      question: 'What is the full form of OOP?',
      answerA: 'Object Oriented Protocol',
      answerB: 'Object Oriented Procedure',
      answerC: 'Object Oriented Programming',
      answerD: 'Object Oriented Product',
      correctAnswer: 'Object Oriented Programming',
    ),
    TestModel(
      question: 'How to output "Hello World" in C++?',
      answerA: 'printf("Hello World");',
      answerB: 'print("Hello World");',
      answerC: 'std::cout << "Hello World";',
      answerD: 'println("Hello World");',
      correctAnswer: 'std::cout << "Hello World";',
    ),
  ];
  List<TestModel> javaQuestions = [
    TestModel(
      question: 'What do we use to define a block of code in Java?',
      answerA: 'Curly Braces {}',
      answerB: 'Square Brackets []',
      answerC: 'Angle Brackets <>',
      answerD: 'Round Brackets ()',
      correctAnswer: 'Curly Braces {}',
    ),
    TestModel(
      question: 'Who developed Java?',
      answerA: 'Oracle Corporation',
      answerB: 'Microsoft Corporation',
      answerC: 'Sun Microsystems',
      answerD: 'Apple Inc.',
      correctAnswer: 'Sun Microsystems',
    ),
    TestModel(
      question: 'What is the size of a int data type in Java?',
      answerA: '8 bit',
      answerB: '16 bit',
      answerC: '32 bit',
      answerD: '64 bit',
      correctAnswer: '32 bit',
    ),
    TestModel(
      question: 'Java programs are',
      answerA: 'Interpreted only',
      answerB: 'Compiled only',
      answerC: 'Either compiled or interpreted',
      answerD: 'Neither compiled nor interpreted',
      correctAnswer: 'Either compiled or interpreted',
    ),
    TestModel(
      question: 'Which method must be implemented by all threads?',
      answerA: 'wait()',
      answerB: 'start()',
      answerC: 'stop()',
      answerD: 'run()',
      correctAnswer: 'run()',
    ),
  ];
  List<TestModel> pythonQuestions = [
    TestModel(
      question: 'What is the correct file extension for Python files?',
      answerA: '.py',
      answerB: '.pyth',
      answerC: '.pt',
      answerD: '.p',
      correctAnswer: '.py',
    ),
    TestModel(
      question: 'Who developed Python?',
      answerA: 'Guido van Rossum',
      answerB: 'Dennis Ritchie',
      answerC: 'James Gosling',
      answerD: 'Linus Torvalds',
      correctAnswer: 'Guido van Rossum',
    ),
    TestModel(
      question: 'Python is an example of which type of programming languages?',
      answerA: 'Object oriented programming language',
      answerB: 'Procedural oriented programming language',
      answerC: 'Structured programming language',
      answerD: 'All of these',
      correctAnswer: 'All of these',
    ),
    TestModel(
      question: 'What does the len() function do in Python?',
      answerA: 'It counts the length of a List',
      answerB: 'It counts the characters in a String',
      answerC: 'Both A and B',
      answerD: 'None of the above',
      correctAnswer: 'Both A and B',
    ),
    TestModel(
      question: 'What is used to define a block of code in Python language?',
      answerA: 'Curly braces',
      answerB: 'Parenthesis',
      answerC: 'Indentation',
      answerD: 'Quotation',
      correctAnswer: 'Indentation',
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(child: Container(
              width: 350,
              height: 2000,
            )),
           Positioned(
               child: Image.asset("assets/jpg/p2.jpg")),

            Positioned(
              top: 280,
                left: 56,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Pahe3(emblima:"assets/png/back.png" ,savolBaza:cppQuestions,)));
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                         color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10
                        )]
                    ),

                    height: 130,
                    width: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/png/c.png",fit: BoxFit.cover,),
                        Text("C++",style: TextStyle(fontSize: 35, color: Color(0xFF5B1CAE)),)
                      ],
                    ),
                  ) ,
                )

               ),
            Positioned(
              top: 440,
                left: 56,

                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Pahe3(emblima:"assets/png/back1.png" ,savolBaza:javaQuestions,)));
                    });
                  },
                  child:  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10
                        )]
                    ),

                    height: 130,
                    width: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/png/j.png",fit: BoxFit.cover,),
                        Text("Java",style: TextStyle(fontSize: 35, color: Color(0xFF5B1CAE)),)
                      ],
                    )
                  ),
                )

               ),
            Positioned(
              top:600,
                left: 56,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Pahe3(emblima:"assets/png/back2.png" ,savolBaza:pythonQuestions,)));
                    });
                  },
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10
                      )]
                    ),
                    height: 130,
                    width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/png/pt.png",fit: BoxFit.cover,),
                          Text("Python",style: TextStyle(fontSize: 35, color: Color(0xFF5B1CAE)),)
                        ],
                      )
                  ),
                )

               )


          ],
        ),
      ),

    );
  }
}
