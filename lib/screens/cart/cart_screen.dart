import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  
  static const String routename = '/cartscreen';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routename),
      builder: (_)=> const CartScreen());
  }

   const CartScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:  CustomAppBar(title: "Cart Screen"),
      bottomNavigationBar:  CustomNavBar(),
    );
  }
}