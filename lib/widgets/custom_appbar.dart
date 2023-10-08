import 'package:flutter/material.dart';
// import 'package:jstore/config/theme.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
 final String title;
 
  const CustomAppBar({
   Key? key, 
   required  this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        
        child: Container(
            color: Colors.black,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            padding: const EdgeInsets.symmetric(
              horizontal: 20, 
              vertical: 10
              ),
      
            child:  Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),
      
      
            ),
            ),
      ),

        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/WishlistScreen');
            },
             icon: const Icon(Icons.favorite)
             )
              ],

    );
  }
  
  @override

  Size get preferredSize => const Size.fromHeight(50.0);
}
