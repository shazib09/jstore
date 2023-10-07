import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jstore/models/models.dart';

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
 
  
    return    Scaffold(
      appBar:  const  CustomAppBar(title: "Zero to helo"),
      bottomNavigationBar:   const CustomNavBar(),
      body:     Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          //hero Carousel Slider
          SizedBox(
            child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              initialPage: 2,
              autoPlay: true,
            ),
            items: Category.categories.map((e) => HeroCarsouelCard(categories: e)).toList(),
          ),

           ),

           const SectionTitle(title: "RECOMMEDED",),
           ProductCarsouel( products: Product.products.where((products) => products.isRecommended).toList() ),

            const SectionTitle(title: "Most Popular",),
           ProductCarsouel( products: Product.products.where((products) => products.isPopular ).toList() ),



        ], 
      ) ,
      
      
      
      
    );
  }
}

