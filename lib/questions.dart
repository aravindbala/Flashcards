import 'dart:math';
import 'package:flutter/material.dart';

class Flashcard {
  final String question;
  final int index;
  String image1;

  Flashcard({required this.question, required this.index, required this.image1});

}

//var currval, prevval = 0;

List<Flashcard> qlist = [

  //Flashcard(index:0,question:'Add'),
  //Flashcard(index:1,question:'Subtract'),
  //Flashcard(index:2,question:'Multiply'),
  //Flashcard(index:3,question:'Divide'),
  //Flashcard(index:4,question:'Factor of '),
  //Flashcard(index:5,question:'HCF of '),
  //Flashcard(index:6,question:'What is '),
  Flashcard(index:0,question:'Find the predecessor of the largest ',image1: 'images/math_img.jpg'),
  Flashcard(index:1,question:'Find the predecessor of the largest ',image1: 'math_img.jpg'),
  Flashcard(index:2,question:'Find the predecessor of the largest ',image1: 'math_img.jpg'),
  Flashcard(index:3,question:'Find the predecessor of the largest ',image1: 'math_img.jpg'),
  
];


  