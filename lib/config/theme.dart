
import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Avenir',
      textTheme: const TextTheme(),

  );
}

TextTheme textTheme(){
  return const TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
     displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),

     displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
     headlineMedium: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
       headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
       titleLarge: TextStyle(
      color: Colors.black,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),

    bodyLarge : TextStyle(
      color: Colors.black,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),

       bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),




  );
}