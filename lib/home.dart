import 'package:flutter/material.dart';
import 'questions.dart';
import 'radio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
enum Radioptions { A,B,C,D }


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  double _initial = 0;
  bool buttondisabled = true;
  int score = 0;
  int correct_flag = 0;

  int i = 0;
  String chosen_answer = '';
  String actual_answer = '';
  @override
  Widget build(BuildContext context) {
  //  String value = (_initial * 10).toStringAsFixed(0);
    //String total = (_initial * 10).toStringAsFixed(0);
      _initial = _initial + 0.1;
    String Qtotal = (_initial * 10).toStringAsFixed(0);
    Set<int> Mans = {};
    List<String> QAset = [];

    String qtext= ' ';
     Radioptions? _character; 

    int answer = 0;
    String final_answer = ' ';
    String radio_answer = ' ';
    String? gender;
    String item;
    String questionx,optionX,option1,option2,option3;
    List<String> listRadio = [];
    QAset = question(qlist);
  
    questionx = QAset[0];
    optionX = QAset[1];
    option1 = QAset[2];
    option2 = QAset[3];
    option3 = QAset[4];
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
            centerTitle: true,
            title: Text("Math Flashcards for Grade 4", style: TextStyle(fontSize: 30)),
            backgroundColor: Colors.blueAccent,
            toolbarHeight: 80,
            elevation: 5,
            shadowColor: Color.fromARGB(255, 64, 182, 255),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              
               Text(questionx,style: TextStyle(fontSize: 25)),
               
              SizedBox(width:100,
              height:100),

              ListTile(
          title: Text(optionX),
          leading: Radio<Radioptions>(
            value: Radioptions.A,
            groupValue: _character,
            onChanged: (Radioptions? value) {
              setState(() {
                _character = value;   
                buttondisabled = false;
                chosen_answer = optionX;
              if(chosen_answer == actual_answer) {
                  correct_flag = 1;
                  score = score + 1;
                }
                else {
                  correct_flag = 0;
                }
                showDialog(
                context: context,
                builder: (ctx) => AlertDialog( 
                  //title: Text("Alert Dialog Box $chosen_answer"),
                  content: (correct_flag == 1) ?Text("Correct Answer !! 😀") :Text("Wrong answer! 😕"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.grey,
                        padding: const EdgeInsets.all(14),
                        child: const Text("OK"),
                        
                      ),
                      
                    ),
                  ],
                ));
              
              });
            },
          ),
        ),
        ListTile(
          title:  Text(option1),
          leading: Radio<Radioptions>(
            value: Radioptions.B,
            groupValue: _character,
            onChanged: (Radioptions? value) {
              setState(() {
                _character = value;
                buttondisabled = false;
                chosen_answer = ' ';
                chosen_answer = option1;
                if(chosen_answer == actual_answer) {
                  correct_flag = 1;
                  score = score + 1;
                }
                else {
                  correct_flag = 0;
                }
                showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
               //   title: Text("Alert Dialog Box $chosen_answer"),
                  content: (correct_flag == 1) ?Text("Correct Answer !! 😀") :Text("Wrong answer 😕"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.grey,
                        padding: const EdgeInsets.all(14),
                        child: const Text("OK"),
                        
                      ),
                      
                    ),
                  ],
                ));
              

              });
            },
          ),
        ), 
       ListTile(
          title:  Text(option2),
          leading: Radio<Radioptions>(
            value: Radioptions.C,
            groupValue: _character,
            onChanged: (Radioptions? value) {
              setState(() {
                _character = value;
                buttondisabled = false;
                 chosen_answer = ' ';
                chosen_answer = option2;
                  if(chosen_answer == actual_answer) {
                  correct_flag = 1;
                  score = score + 1;
                }
                else {
                  correct_flag = 0;
                }
                showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                 // title: Text("Alert Dialog Box $chosen_answer"),
                  content: (correct_flag == 1) ?Text("Correct Answer !! 😀 ") :Text("Wrong answer!😕"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.grey,
                        padding: const EdgeInsets.all(14),
                        child: const Text("OK"),
                        
                      ),
                      
                    ),
                  ],
                ));
             
              });
            },
          ),
        ), 
         ListTile(
          title:  Text(option3),
          leading: Radio<Radioptions>(
            value: Radioptions.D,
            groupValue: _character,
            onChanged: (Radioptions? value) {
              setState(() {
                _character = value;
                buttondisabled = false;
         _character = value;
                 chosen_answer = ' ';
                chosen_answer = option2;
                  if(chosen_answer == actual_answer) {
                  correct_flag = 1;
                  score = score + 1;
                }
                else {
                  correct_flag = 0;
                }
                showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                //  title: Text("Alert Dialog Box $chosen_answer"),
                  content: (correct_flag == 1) ?Text("Correct Answer !! 😀 ") :Text("Wrong answer! 😕"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.grey,
                        padding: const EdgeInsets.all(14),
                        child: const Text("OK"),
                        
                      ),
                      
                    ),
                  ],
                ));
             
              });

     
            },
          ),
        ), 
         Text("Question $Qtotal of 10 ", style: TextStyle(fontSize: 10)),
         SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
                  minHeight: 5,
                  value: _initial,
                ),
              ),
               ElevatedButton(
       onPressed: buttondisabled? null  : (){

         showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Alert Dialog Box"),
                  content: const Text("Are you sure you want to exit?"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                        showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Alert Dialog Box"),
                  content:  Text("Score = $score/10")));
                  
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("Yes"),
                        
                      ),
                      
                    ),
                  ],
                ),
              );

       },
       child: Text("Exit quiz")
)

            ])));
  }



List<String> question(qlist) {
  var randVal = Random();
  int qindex = 0;
  int min=0; int max=0;
  String qtext = ' ';
  String qimage = ' ';
  int answer = 0;
  String final_answer = ' ';
  int largenum = 0,pred;
  String firstnum , secondnum;
  String Mans;
  List<String> result = [];
  String img1;
  List<String> options = [];
  String option1 = '', option2 = '', option3 = '';
  var num1 = Random().nextInt(9);
    var num2 = Random().nextInt(100);
    var hcfn1 = Random().nextInt(50);
    var hcfn2 = Random().nextInt(50);
    var num3 = Random().nextInt(10000);
    int num4 = Random().nextInt(1000000);
    var num5 = Random().nextInt(20); 
    var quotient = 0;
    var remainder = 0;
   qindex = randVal.nextInt(7);
   qindex = 3;
   switch(qindex) {
    case 0: case 1: {
        min = 1; max = 10;
        num1 = min + Random().nextInt(max - min);
        qtext = qlist[qindex].question +  '$num1 digit number';
        qimage = qlist[qindex].image1;
        if(qtext.contains('largest')) {largenum = int.parse('9' * num1);}
        else if(qtext.contains('smallest')) {
          largenum = int.parse('1' + ('0' * (num1 - 1)));
        }
        
        if(qtext.contains('predecessor')) { answer = largenum - 1;} 
        else if(qtext.contains('successor')) {answer = largenum + 1;}
        
        //answer = largenum - 1;
        final_answer = answer.toString();
        option1 = (answer + 3).toString();
        option2 = (answer + 4).toString();
        option3 = (answer + 5).toString();
    }
    break;
    case 2: {
      min = 3; max = 10;
      num1 = min + Random().nextInt(max - min);
      qtext = qlist[qindex].question + '$num2 from the smallest $num1 digit number';
      qimage = qlist[qindex].image1;
      largenum = int.parse('1' + ('0' * (num1 - 1)));
      answer = largenum - num2;
      final_answer = answer.toString();
      option1 = (answer + 30).toString();
      option2 = (answer - 44).toString();
      option3 = (answer * 5).toString();

    }
    break;
    case 3: case 4: {
      min = 1000000; max = 9999999;
      num4 = min + Random().nextInt(max - min);
      firstnum = num4.toString()[2];
      secondnum = num4.toString()[4];
      qtext = qlist[qindex].question + 'third and fifth digits in the number $num4';
      qimage = qlist[qindex].image1;
      if (qtext.contains("sum")) {
        largenum = (int.parse(firstnum) * 10000) + (int.parse(secondnum) * 100);
        
      }
      else {
        largenum = (int.parse(firstnum) * 10000) - (int.parse(secondnum) * 100);
      }
      answer = largenum;
      final_answer = largenum.toString();
      option1 = (answer + 3).toString();
      option2 = (answer + 5).toString();
      option3 = (answer + 11).toString();
    }
   }
   result.add(qtext);
   result.add(qimage);
   options.add(final_answer);
   options.add(option1);
   options.add(option2);
   options.add(option3);
   options.shuffle();
   actual_answer = final_answer;
   result.add(options[0]);
   result.add(options[1]);
   result.add(options[2]);
   result.add(options[3]);
   return result;
}
  void updateToNext() {
    setState(() {
      _initial = _initial + 0.1;
      if (_initial > 1.0) {
        _initial = 0.1;
      }
    });
  }

 // void updateToPrev() {
 //   setState(() {
  //    _initial = _initial - 0.1;
  //    if (_initial < 0.1) {
  //      _initial = 1.0;
  //    }
 //   });
 // }

  void showNextCard() {
    setState(() {
    question(qlist);
      // currval = randVal;
    });
  }

  void showreply() {

  }
}
//void showPreviousCard() {
 //   setState(() {
 //     _currentIndexNumber = _currentIndexNumber - 1;
  //  });
 // }



Set<int> factors(N) {
  Set<int> result = {};
  for (var i=1; i<=N/i; ++i) {
    if(N%i == 0) {
     result.add(i);
     result.add((N / i).floor());
   }
  }
  return result;
}

void showAlert(chosen_answer,actual_answer) {
  
}

int hcf(X,Y) {
  int result = 0;
  for (var i=1; i<=X/i; ++i) {
    if((X%i == 0) & (Y%i == 0)) {
      if(i > result) {
        result = i;
      }
    }
  }
  return result;
}



