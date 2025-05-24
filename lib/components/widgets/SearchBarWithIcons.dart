import 'package:farmacia/pages/cart.dart';
import 'package:flutter/material.dart';

class SearchBarWithIcons extends StatelessWidget {
  final int cartItemCount;

  const SearchBarWithIcons({super.key, this.cartItemCount = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.qr_code_scanner, size: 28),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search medicine',
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Icon(Icons.camera_alt, size: 28),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const Cart(itensCompra: [],)),
            );
          },
          child: Stack(
            children: [
              const Icon(Icons.shopping_cart, size: 28),
              if (cartItemCount > 0)
                Positioned(
                  right: 0,
                  top: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.blue,
                    child: Text(
                      '$cartItemCount',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
