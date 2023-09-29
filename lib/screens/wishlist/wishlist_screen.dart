import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class WishlisttScreen extends StatelessWidget {
  
  static const String routename = '/WishlistScreen';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routename),
      builder: (_)=> const WishlisttScreen());
  }

   const WishlisttScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:  CustomAppBar(title: "Wishlistt Screen"),
      bottomNavigationBar:  CustomNavBar(),
    );
  }
}