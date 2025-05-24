import 'package:farmacia/components/onboarding_screen/onboarding_screen.dart';
import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/components/widgets/compostos/cart_app_bar.dart';
import 'package:farmacia/pages/home_page.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final List<Map<String, dynamic>> itensCompra;

  const Cart({
    super.key,
    required this.itensCompra,
  });

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  late List<Map<String, dynamic>> carrinho;

  @override
  void initState() {
    super.initState();
    // Clona a lista para manipulação interna
    carrinho = List.from(widget.itensCompra);
  }

  void removerItem(int index) {
    setState(() {
      carrinho.removeAt(index);
    });
  }

  double calcularSubtotal() {
    double total = 0;
    for (var item in carrinho) {
      total += (item['preco'] as double) * (item['quantidade'] as int);
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    double subtotal = calcularSubtotal();
    double shippingTax = 100; // você pode alterar isso ou calcular dinamicamente

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(height: 55),

            // CartAppBar mantido
            const CartAppBar(),

            const SizedBox(height: 20),

            Expanded(
              child: carrinho.isEmpty
                  ? Center(
                      child: Text(
                        'Seu carrinho está vazio',
                        style: TextStyle(color: Colors.grey[700], fontSize: 18),
                      ),
                    )
                  : ListView.builder(
                      itemCount: carrinho.length,
                      itemBuilder: (context, index) {
                        final item = carrinho[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            height: 140,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  item['imagem'],
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),

                                const SizedBox(width: 8),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),

                                    Text(
                                      item['nome'],
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),

                                    const SizedBox(height: 10),

                                    Row(
                                      children: [
                                        const Icon(Icons.star_border, color: Colors.yellow),
                                        const SizedBox(width: 4),
                                        Text(item['estrelas'].toString()),

                                        const SizedBox(width: 30),

                                        Text(
                                          '${item['preco'].toStringAsFixed(0)} Mzn',
                                          style: const TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 20),

                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 110,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color.fromARGB(255, 6, 77, 8),
                                            ),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text(
                                              item['quantidade'].toString(),
                                              style: const TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(255, 6, 77, 8),
                                              ),
                                            ),
                                          ),
                                        ),

                                        const SizedBox(width: 35),

                                        Container(
                                          height: 45,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color.fromARGB(255, 20, 95, 22),
                                            ),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: IconButton(
                                            onPressed: () => removerItem(index),
                                            icon: const Icon(Icons.delete_outline),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),

            const SizedBox(height: 20),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Sub total:'),
                    Text(
                      '${subtotal.toStringAsFixed(0)} mzn',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Shipping Tax:'),
                    Text(
                      '${shippingTax.toStringAsFixed(0)} mzn',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                Button(
                  corprincipal: Colors.lightGreenAccent,
                  corshadow: Colors.transparent,
                  textcolor: const Color.fromARGB(255, 12, 81, 15),
                  label: 'Checkout',
                  ontap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const HomePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
