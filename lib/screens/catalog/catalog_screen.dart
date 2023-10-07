import 'package:flutter/material.dart';
import '../../models/models.dart';

import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  
  static const String routename = '/CatalogScreen';

  static Route route({required Category categories}){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routename),
      builder: (_)=>  CatalogScreen( categories : categories));
  }

final Category categories;
   const CatalogScreen({super.key, required this.categories});

  

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final List<Product> catrgoryproduct = Product.products.where((products) => products.category == categories.name).toList();
    return   Scaffold(
      appBar:  CustomAppBar(title: categories.name),
      bottomNavigationBar:  const CustomNavBar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1.15),
        itemCount: catrgoryproduct.length,
         itemBuilder: (context, index){
          return Center(child: ProductCard(products: catrgoryproduct[index], widthFactor: 2.2,));
         })
      
      
      // ProductCard(products: Product.products[0],),
    );
  }
}