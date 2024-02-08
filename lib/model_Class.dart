import 'dart:ui';

import 'package:flutter/material.dart';

class ModelClass {
  final String FESTIVALNAME;
  final String FESTIVALIMAGE;
  final List<String> LISTIMAGE;
  final Color color;

  // final String image3;
  // final String image4;
  // final String image5;

  ModelClass(
      {required this.FESTIVALNAME,
      required this.FESTIVALIMAGE,
      required this.LISTIMAGE,required this.color,});
}

List<ModelClass> festivalList = [
  // ModelClass(image: 'assets/Uttrayan_Q1.png', image1: 'assets/Uttrayan_Q2.png', image2: 'assets/Uttrayan_Q3.png', image3: 'assets/Uttrayan_Q4.png', image4: 'assets/Uttrayan_Q5.png', image5: 'assets/Uttrayan_Q6.png'),
  //  ModelClass(image: 'assets/26j_Q1.png', image1: 'assets/26j_Q2.png', image2: 'assets/26j_Q3.png', image3: 'assets/26j_Q4.png', image4: 'assets/26j_Q5.png', image5: 'assets/26j_Q6.png'),
  //  ModelClass(image: 'assets/26j_Q1.png', image1: 'assets/26j_Q2.png', image2: 'assets/26j_Q3.png', image3: 'assets/26j_Q4.png', image4: 'assets/26j_Q5.png', image5: 'assets/26j_Q6.png'),
  ModelClass(
      FESTIVALNAME: 'Uttrayan',
      FESTIVALIMAGE: 'assets/Utrayan.png',
      color: Colors.red,
      LISTIMAGE: [
        'assets/Uttrayan_Q1.png',
        'assets/Uttrayan_Q2.png',
        'assets/Uttrayan_Q3.png',
        'assets/Uttrayan_Q4.png',
        'assets/Uttrayan_Q5.png',
        'assets/Uttrayan_Q6.png'
      ]),
  ModelClass(
      FESTIVALNAME: '26 January',
      FESTIVALIMAGE: 'assets/26January.png',
      color: Colors.blue,
      LISTIMAGE: [
        'assets/26j_Q1.png',
        'assets/26j_Q2.png',
        'assets/26j_Q3.png',
        'assets/26j_Q4.png',
        'assets/26j_Q5.png',
        'assets/26j_Q6.png'
      ]),
  ModelClass(
      FESTIVALNAME: 'Holi',
      FESTIVALIMAGE: 'assets/Holi.png',
      color: Colors.purple,
      LISTIMAGE: [
        'assets/Holi_Q1.png',
        'assets/Holi_Q2.png',
        'assets/Holi_Q3.png',
        'assets/Holi_Q4.png',
        'assets/Holi_Q5.png',
        'assets/Holi_Q6.png'
      ]),
  ModelClass(
      FESTIVALNAME: 'Maha Shivratri',
      FESTIVALIMAGE: 'assets/Shivratri.png',
      color: Colors.green,
      LISTIMAGE: [
        'assets/Shiv_Q1.png',
        'assets/Shiv_Q2.png',
        'assets/Shiv_Q3.png',
        'assets/Shiv_Q4.png',
        'assets/Shiv_Q5.png',
        'assets/Shiv_Q6.png'
      ]),
  ModelClass(
      FESTIVALNAME: 'Rakshabandhan',
      FESTIVALIMAGE: 'assets/RakshaBandhan.png',
      color: Colors.greenAccent,
      LISTIMAGE: [
        'assets/Raksha_Q1.png',
        'assets/Raksha_Q2.png',
        'assets/Raksha_Q3.png',
        'assets/Raksha_Q4.png',
        'assets/Raksha_Q5.png',
        'assets/Raksha_Q6.png'
      ]),
  ModelClass(
      FESTIVALNAME: 'Navratri',
      FESTIVALIMAGE: 'assets/Navratri.png',
      color: Colors.indigo,
      LISTIMAGE: [
        'assets/Navratri_Q1.png',
        'assets/Navratri_Q2.png',
        'assets/Navratri_Q3.png',
        'assets/Navratri_Q4.png',
        'assets/Navratri_Q5.png',
        'assets/Navratri_Q6.png'
      ]),
  ModelClass(
      FESTIVALNAME: 'Diwali',
      FESTIVALIMAGE: 'assets/Diwali.png',
      color: Colors.orange,
      LISTIMAGE: [
        'assets/Diwali_Q1.png',
        'assets/Diwali_Q2.png',
        'assets/Diwali_Q3.png',
        'assets/Diwali_Q4.png',
        'assets/Diwali_Q5.png',
        'assets/Diwali_Q6.png'
      ]),
  ModelClass(
      FESTIVALNAME: 'Christmas',
      FESTIVALIMAGE: 'assets/Christmas.png',
      color: Colors.pink,
      LISTIMAGE: [
        'assets/Christmas_Q1.png',
        'assets/Christmas_Q2.png',
        'assets/Christmas_Q3.png',
        'assets/Christmas_Q4.png',
        'assets/Christmas_Q5.png',
        'assets/Christmas_Q6.png'
      ]),
];
