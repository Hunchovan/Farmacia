import 'package:farmacia/pages/home_page.dart';
import 'package:flutter/material.dart';


class SairWidgets extends StatelessWidget {
  const SairWidgets({super.key});

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
                    child:IconButton(onPressed:() {
                       Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const HomePage(),
                          
                        )); // sua Home
                    }, icon: Icon(Icons.arrow_back,color:  const Color.fromARGB(137, 0, 0, 0),))
                    
                                      ),
                ),


                SizedBox(width: 230,),
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