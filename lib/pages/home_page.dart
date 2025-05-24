import 'package:farmacia/components/widgets/SearchBarWithIcons.dart';
import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/components/widgets/compostos/desconto.dart';
import 'package:farmacia/components/widgets/compostos/mais_vendidos.dart';
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

            MaisVendidos()
            ],
          ),
        ),
      ),
    );
  }
}
