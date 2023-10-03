
import 'package:equatable/equatable.dart';

class Category extends Equatable{

  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });
  
  @override
  
  List<Object?> get props => [name , imageUrl];


  
  static List<Category> categories = [
    const Category(
      name: "Soft Drint", 
      imageUrl: "https://images.unsplash.com/photo-1571250314539-dff42f98afc4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3744&q=80",
      ),

      const Category(
      name: "Water", 
      imageUrl: "https://images.unsplash.com/photo-1538300342682-cf57afb97285?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3456&q=80"
      ),

      const Category(name: 
      "Breads",
       imageUrl: "https://images.unsplash.com/photo-1534620808146-d33bb39128b2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3289&q=80"
       ),



  ];


}