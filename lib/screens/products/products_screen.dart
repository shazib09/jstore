import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../models/models.dart';

import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  
  static const String routename = '/ProductScreen';
  static Route route({required Product products}){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routename),
      builder: (_)=>  ProductScreen(products: products));
  }

final Product products;
   const ProductScreen({super.key, required this.products});

  

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:  CustomAppBar(title: products.name),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child:  Container(
            decoration: const BoxDecoration(),
                height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon:  const Icon(Icons.favorite, color: Colors.white,)),

                IconButton(onPressed: (){}, icon:  const Icon(Icons.share, color: Colors.white,)),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.white),
                  onPressed: (){}, child: const Text("Add to Cart"))            

              ],
            ),
          ),
        ),
      body:
      ListView(
        children : [ 
          
          CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                initialPage: 2,
                autoPlay: true,
              ),
              items: [HeroCarsouelCard(products: products,)],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(30),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(5),
                     width: MediaQuery.of(context).size.width - 10 ,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal : 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(products.name, style: const TextStyle(color: Colors.white),),
                          Text("${products.price}",style : const TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

             Padding(
               padding: const EdgeInsets.all(20.0),
               child: ExpansionTile(
                       title:  Text('Product Information', style: Theme.of(context).textTheme.bodySmall,),
                       // subtitle: const Text('Custom expansion arrow icon'),
                      
                       children:  <Widget>[
                         ListTile(title: Text(products.description)),
                       ],
               
               ),
             ),


             Padding(
               padding: const EdgeInsets.all(20.0),
               child: ExpansionTile(
                       title:  Text('Dilivery Information', style: Theme.of(context).textTheme.bodySmall,),
                       // subtitle: const Text('Custom expansion arrow icon'),
                      
                       children:  <Widget>[
                         ListTile(title: Text(products.description)),
                       ],
               
               ),
             ),

        ]
      ),
      
      
      // HeroCarsouelCard(products: products,),
    );
  }
}