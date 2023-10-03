import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jstore/models/category_model.dart';
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
      body:     SizedBox(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
        items: Category.categories.map((e) => HeroCarsouelCard(categories: e)).toList(),
      ),

       ) ,
      
      
      
      
    );
  }
}



class HeroCarsouelCard extends StatelessWidget {


  final Category categories;

  const HeroCarsouelCard({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(categories.imageUrl, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    categories.name,
                    style:const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}