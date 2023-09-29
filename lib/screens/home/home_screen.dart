import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  
  static const String routename = '/';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routename),
      builder: (_)=>const HomeScreen());
  }

  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:  CustomAppBar(title: "Zero to helo"),
      bottomNavigationBar:  CustomNavBar(),
    );
  }
}