import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/data/data.dart';

import 'package:farmacia/pages/compra_page.dart';
import 'package:flutter/material.dart';

class MaisVendidos extends StatelessWidget {
  const MaisVendidos({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: Medicamentos.best.asMap().entries.map((entry) {
          int index = entry.key;
          Medicamentos med = entry.value;

          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
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
                    const SizedBox(height: 2),
                    Image.asset(med.imagePath, scale: 3.5),
                    const SizedBox(height: 2),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '${med.nome} \n ${med.quantidade}',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        med.categorias.isNotEmpty
                            ? med.categorias
                            : 'Medicamento',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.star_border, color: Colors.yellow),
                        Text('${med.stars.toStringAsFixed(1)}'),
                      ],
                    ),
                    const SizedBox(height: 13),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 40,
                        width: 100,
                        child: Button(
                          corprincipal: const Color.fromARGB(197, 8, 74, 3),
                          corshadow: Colors.transparent,
                          textcolor: Colors.lightGreenAccent,
                          label: 'Comprar',
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CompraPage(med: med),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
