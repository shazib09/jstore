import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  
  static const String routename = '/CatalogScreen';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routename),
      builder: (_)=> const CatalogScreen());
  }

   const CatalogScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:  CustomAppBar(title: "Catalog Screen"),
      bottomNavigationBar:  CustomNavBar(),
    );
  }
}