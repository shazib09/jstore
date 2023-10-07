import 'package:flutter/material.dart';
import '../models/models.dart';

class ProductCard extends StatelessWidget {
 final Product products;
 final double widthFactor;

  const ProductCard({
    
    super.key,
    required this.products,
    this.widthFactor = 2.5,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
     children: [
         Container(
               width: MediaQuery.of(context).size.width/widthFactor,
             height: 150,
             decoration:  const BoxDecoration(),
              child: Image.network( products.imageUrl, fit: BoxFit.cover,),

         ),
         Positioned(
           top : 60,
           child: Container(
             height: 80,
             width: MediaQuery.of(context).size.width /2.5,
             decoration:  BoxDecoration(
                 color: Colors.black.withAlpha(50),
             ),
           ),
         ),

         
           Positioned(
           top: 65,
            left: 5,
           child:  Container(
             height: 70,
             width: MediaQuery.of(context).size.width /2.5 -10,
             decoration: const  BoxDecoration(
                 color: Colors.black),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Expanded(
                         flex: 3,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(products.name, style:const TextStyle(color: Colors.white),),
                             Text("\$${products.price}", style:const TextStyle(color: Colors.white),),
                           ],
                         ),
                       ),
                 
                         Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle, color: Colors.white,)))
                 
                     ],
                   ),
                 ),
             ),
           ),


        //  Text(Product.products[0].name),
     ],
            );
  }
}



