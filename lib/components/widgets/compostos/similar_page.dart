import 'package:farmacia/data/data.dart';
import 'package:flutter/material.dart';

class SimilarPage extends StatelessWidget {
  const SimilarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: Medicamentos.best.map((med) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(76, 6, 77, 8)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  Image.asset(med.imagePath, width: 90, height: 90),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          med.nome,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          med.categorias.isNotEmpty
                              ? med.categorias
                              : 'Medicamento',
                          style: const TextStyle(),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.star_border, color: Colors.yellow),
                            const SizedBox(width: 4),
                            Text('${med.stars.toStringAsFixed(1)}'),
                            const Spacer(),
                            Text(
                              '${med.preco.toStringAsFixed(0)} Mzn',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 12),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
