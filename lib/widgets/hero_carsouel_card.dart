import 'package:flutter/material.dart';
import 'package:jstore/models/models.dart';



class HeroCarsouelCard extends StatelessWidget {


  final Category? categories;
  final Product? products;

  const HeroCarsouelCard({super.key,  this.categories , this.products});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        if(products == null){
           Navigator.pushNamed(
        context, '/CatalogScreen', 
        arguments: categories
        ); 
        }
        else if(categories == null ){
        //   Navigator.pushNamed(
        // context, '/CatalogScreen', 
        // arguments: categories
        // ); 
        }
       
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(

                  products == null ? categories!.imageUrl : products!.imageUrl,

                   fit: BoxFit.cover, width: 1000.0),
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
                      products == null ? categories!.name  : " ",
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
      ),
    );
  }
}