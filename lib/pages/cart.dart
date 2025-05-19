import 'package:farmacia/components/widgets/compostos/cart_app_bar.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
        
        
            SizedBox(height: 55,),

            //cart app bar
            CartAppBar()
          ],
        ),
      ),
    );
  }
}