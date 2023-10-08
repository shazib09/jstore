
import 'package:equatable/equatable.dart';

class Product extends Equatable{

  final String name;
  final String description;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;



  const Product({
      required this.name,
      required this.description,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular,
  });

 
 
 
  @override
  List<Object?> get props => [name,description ,category, imageUrl , price , isRecommended, isPopular];

  static List<Product> products = [
    const Product(
      name: "Soft 1",
      description : "Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       category: "Soft Drint",
       imageUrl: "https://images.unsplash.com/photo-1499096382193-ebb232527fee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3880&q=80", 
       price: 32, 
       isRecommended: true, 
       isPopular: false, ),

           const Product(
      name: "Soft 2",
      description : "Prodict : 2 : Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       category: "Soft Drint",
       imageUrl: "https://images.unsplash.com/photo-1499096382193-ebb232527fee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3880&q=80", 
       price: 32, 
       isRecommended: true, 
       isPopular: false, ),


           const Product(
      name: "Soft 3",
       category: "Soft Drint",
       description : "sonfgt 3  Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       imageUrl: "https://images.unsplash.com/photo-1499096382193-ebb232527fee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3880&q=80", 
       price: 32, 
       isRecommended: true, 
       isPopular: false, ),


           const Product(
      name: "Soft 4",
      description : "soft 4  Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       category: "Soft Drint",
       imageUrl: "https://images.unsplash.com/photo-1499096382193-ebb232527fee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3880&q=80", 
       price: 32, 
       isRecommended: true, 
       isPopular: false, ),


           const Product(
      name: "Soft 5",
      description : "soft 5  Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       category: "Soft Drint",
       imageUrl: "https://images.unsplash.com/photo-1499096382193-ebb232527fee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3880&q=80", 
       price: 32, 
       isRecommended: true, 
       isPopular: false, ),

        const Product(
      name: "Soft 6",
      description : " p  6 Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       category: "Soft Drint",
       imageUrl: "https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3774&q=80",
         price: 32, 
       isRecommended: true, 
       isPopular: false, ),



            const Product(
      name: "iphone",
      description : " ipone 1 Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       category: "Water",
       imageUrl: "https://images.unsplash.com/photo-1522273400909-fd1a8f77637e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3812&q=80",
         price: 32, 
       isRecommended: true, 
       isPopular: true, ),





            const Product(
      name: "pink ",
      description : "water pink: Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       category: "Water",
       imageUrl: "https://images.unsplash.com/photo-1508771400123-e194ad75c0e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3804&q=80",
         price: 32, 
       isRecommended: true, 
       isPopular: true, ),





            const Product(
      name: "skins",
      description : "skin bread Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You'll get expert insights, strategies and tactics to help grow your business.",
       category: "Breads",
       imageUrl: "https://images.unsplash.com/photo-1575330933415-cea1e7ce53eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3774&q=80",
         price: 32, 
       isRecommended: true, 
       isPopular: true, ),



  ];

  

}