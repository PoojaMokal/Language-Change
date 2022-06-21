import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalStrings extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'hello':'HELLO WORLD',
      'message':"WELCOME EveryOne Please Select Language",
      'title': 'Language Changing App',
      'changelang':'Change Language'
    },
    'hi_IN':{
      'hello':'नमस्ते दुनिया',
      'message':"सर्वांचे स्वागत आहे कृपया भाषा निवडा",
      'title': 'भाषा बदलने वाला ऐप',
      'changelang':'भाषा बदलो'

    },
    'mi_IN':{
      'hello':'हॅलो वर्ल्ड',
      'message':"पसभी का स्वागत है कृपया भाषा चुनें",
      'title': 'भाषा बदलणारे अॅप',
      'changelang':'भाषा बदला'
    }
  };

}