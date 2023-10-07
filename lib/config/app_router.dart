// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:jstore/models/models.dart';
// import 'package:flutter/widgets.dart';

import 'package:jstore/screens/screens.dart';

class AppRouter{
  
  static Route onGenerateRoute(RouteSettings settings){
    // print("This Route name is ${settings.name}");


    switch (settings.name) {
      case '/':
          return  HomeScreen.route();

    case CartScreen.routename: 
           return  CartScreen.route();
    
    case CatalogScreen.routename: 
           return  CatalogScreen.route(categories: settings.arguments as Category);
    
     case WishlisttScreen.routename: 
           return  WishlisttScreen.route();
      case ProductScreen.routename: 
           return  ProductScreen.route();
      
     
      // case HomeScreen.routename:
      // return HomeScreen.route();




        break;


      default:
      return _errorroute();
    }

    
 

  }

   static Route _errorroute(){
      return   MaterialPageRoute(
      settings: const  RouteSettings(name: "/eorror"),
      builder: (_)=>const Scaffold(
        body: Text("Error in Routing"),
      ));
    }

}