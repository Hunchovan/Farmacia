import 'package:farmacia/components/widgets/SearchBarWithIcons.dart';
import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/models/localfiles.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            SearchBarWithIcons(),
              SizedBox(height: 30,),

              Container(
               
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage(Localfiles.pad),fit: BoxFit.cover),
                   borderRadius: BorderRadius.circular(20),

                ),
                child:
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(

                        
                        children: [

                          SizedBox(height: 5,),
                          Text('15% de Desconto',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          Text('Remédio na tua porta',style: TextStyle(color: Colors.white,),),

                          SizedBox(height: 40,
                         
                          ),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: 100,
                                height: 40,
                                child: Button(
                                                  corprincipal: const Color.fromARGB(197, 24, 24, 24),
                                                  corshadow: Colors.transparent,
                                                  textcolor: Colors.lightGreenAccent,
                                                  label: 'Comprar',
                                                  ontap: () {},
                                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    
                    Image.asset(Localfiles.medico)
                  ],
                ),
              )
          ],
        ),
      ),

    );
  }
}