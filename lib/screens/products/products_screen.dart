import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  
  static const String routename = '/ProductScreen';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routename),
      builder: (_)=> const ProductScreen());
  }

   const ProductScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:  CustomAppBar(title: "Product Screen"),
      bottomNavigationBar:  CustomNavBar(),
    );
  }
}