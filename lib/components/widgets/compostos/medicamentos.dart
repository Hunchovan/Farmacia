import 'package:flutter/material.dart';

class MedicamentoItem {
  final String imageAsset;
  final String label;
  final VoidCallback onTap;

  MedicamentoItem({
    required this.imageAsset,
    required this.label,
    required this.onTap,
  });
}

class MedicamentoHorizontalList extends StatelessWidget {
  final List<MedicamentoItem> items;

  /// Espera exatamente 5 itens. Ajuste o assert se quiser mais ou menos.
  MedicamentoHorizontalList({required List<MedicamentoItem> items})
    : assert(items.length == 5),
      this.items = items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, // altura pra caber avatar + label
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
  onTap: item.onTap,
  child: Container(
  width: 100, // antes era 80
  margin: const EdgeInsets.symmetric(horizontal: 3  ),
  child: Column(
    children: [
      CircleAvatar(
        radius: 45,               // antes era 40
        backgroundColor: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: Image.asset(
              item.imageAsset,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      const SizedBox(height: 6),
      Text(
        item.label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    ],
  ),
),

);

        },
      ),
    );
  }
}
