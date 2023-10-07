import 'package:flutter/material.dart';
import 'package:jstore/models/models.dart';



class HeroCarsouelCard extends StatelessWidget {


  final Category categories;

  const HeroCarsouelCard({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(
        context, '/CatalogScreen', 
        arguments: categories
        ); 
      },
      child: Container(
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
      ),
    );
  }
}