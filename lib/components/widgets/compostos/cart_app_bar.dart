import 'package:flutter/material.dart';


class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: const Color.fromARGB(72, 7, 59, 9),),
                    ),
                    child: Icon(Icons.arrow_back,color: const Color.fromARGB(137, 0, 0, 0),),
                  ),
                ),

                SizedBox(width: 10,),

                Text('Carrinho',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),


                SizedBox(width: 150,),
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color:const Color.fromARGB(72, 7, 59, 9),),
                    ),
                    child: Icon(Icons.favorite_border,color: const Color.fromARGB(137, 0, 0, 0),),
                  ),
                ),
                SizedBox(width: 5,),

                
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color:const Color.fromARGB(72, 7, 59, 9),),
                    ),
                    child: Icon(Icons.share_outlined,color: const Color.fromARGB(137, 0, 0, 0),),
                  ),


                  
                ),
              ],
            );
  }
}