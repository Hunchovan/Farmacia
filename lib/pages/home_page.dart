import 'package:farmacia/components/widgets/SearchBarWithIcons.dart';
import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/components/widgets/compostos/desconto.dart';
import 'package:farmacia/components/widgets/compostos/medicamentos.dart';
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
      backgroundColor: const Color.fromARGB(51, 76, 175, 79),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              SearchBarWithIcons(),
              SizedBox(height: 30),

              // classe com o widget de medico
              Desconto(),

              SizedBox(height: 16),

              //categorias
              Align(
                alignment: Alignment.centerLeft,

                child: Text(
                  'Categorias',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),

              SizedBox(height: 20),

              MedicamentoHorizontalList(
                items: [
                  MedicamentoItem(
                    imageAsset: Localfiles.medicamento,
                    label: 'Medicamentos',
                    onTap: () => print('A'),
                  ),
                  MedicamentoItem(
                    imageAsset: Localfiles.suplementos,
                    label: 'Suplementos',
                    onTap: () => print('B'),
                  ),
                  MedicamentoItem(
                    imageAsset: Localfiles.skin,
                    label: 'Estética',
                    onTap: () => print('C'),
                  ),
                  MedicamentoItem(
                    imageAsset: Localfiles.medico,
                    label: 'Medicamento D',
                    onTap: () => print('D'),
                  ),
                  MedicamentoItem(
                    imageAsset: Localfiles.medico,
                    label: 'Medicamento E',
                    onTap: () => print('E'),
                  ),
                ],
              ),

              SizedBox(height: 20),

              //Best seller producs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mais vendidos',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Ver todos',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 350,
                      width: 200,
                
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 2),
                            Image.asset(Localfiles.cloro, scale: 4),
                
                            SizedBox(height: 2),
                
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Clorefenamina  \n 500mg',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Medicamento',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                
                            SizedBox(height: 4),
                
                            Row(
                              children: [
                                Icon(Icons.star_border, color: Colors.yellow),
                                Text('4.8 (2.2k)'),
                              ],
                            ),
                
                            SizedBox(height: 13),
                
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: Button(
                                  corprincipal: const Color.fromARGB(
                                    197,
                                    8,
                                    74,
                                    3,
                                  ),
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
                    ),


                    SizedBox(width: 15,),
                    
                    Container(
                      height: 350,
                      width: 200,
                
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 2),
                            Image.asset(Localfiles.whey, scale: 3),
                
                            SizedBox(height: 2),
                
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Whey protein \n 550mg',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Medicamento',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                
                            SizedBox(height: 4),
                
                            Row(
                              children: [
                                Icon(Icons.star_border, color: Colors.yellow),
                                Text('4.8 (2.2k)'),
                              ],
                            ),
                
                            SizedBox(height: 13),
                
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: Button(
                                  corprincipal: const Color.fromARGB(
                                    197,
                                    8,
                                    74,
                                    3,
                                  ),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
