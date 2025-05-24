import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/components/widgets/compostos/sair_widgets.dart';
import 'package:farmacia/components/widgets/compostos/similar_page.dart';
import 'package:farmacia/data/data.dart';
import 'package:farmacia/models/localfiles.dart';
import 'package:flutter/material.dart';

import 'cart.dart';  // Importar a página do carrinho

class CompraPage extends StatefulWidget {
  final Medicamentos med;

  const CompraPage({super.key, required this.med});

  @override
  State<CompraPage> createState() => _CompraPageState();
}

class _CompraPageState extends State<CompraPage> {
  int quantidade = 1;
  // Lista local para guardar os itens do carrinho
  List<Map<String, dynamic>> itensCarrinho = [];

  void adicionarAoCarrinho() {
    final med = widget.med;

    Map<String, dynamic> novoItem = {
      'nome': med.nome,
      'preco': med.preco,
      'quantidade': quantidade,
      'imagem': med.imagePath,
      'estrelas': med.stars,
    };

    setState(() {
      itensCarrinho.add(novoItem);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Adicionado ${med.nome} x$quantidade ao carrinho')),
    );

    // Navegar para a tela Cart, passando os itens do carrinho
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Cart(itensCompra: itensCarrinho),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final med = widget.med;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 55),
              const SairWidgets(),
              Image.asset(med.imagePath, scale: 1.5),

              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  med.nome,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
              const SizedBox(height: 5),

              Row(
                children: [
                  const Icon(Icons.star_border, color: Colors.yellow),
                  const SizedBox(width: 2),
                  Text(med.stars.toStringAsFixed(1)),
                ],
              ),

              const SizedBox(height: 20),

              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Preço: ${med.preco} MZN',
                  style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Container(
                    height: 55,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(72, 7, 59, 9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        med.quantidade,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 55,
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 6, 77, 8)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantidade = 1;
                            });
                          },
                          icon: const Icon(Icons.delete_outline, color: Color.fromARGB(255, 6, 77, 8)),
                        ),
                        Text(
                          '$quantidade',
                          style: const TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 6, 77, 8),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantidade++;
                            });
                          },
                          icon: const Icon(Icons.add, color: Color.fromARGB(255, 6, 77, 8)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 65,
                child: Button(
                  corprincipal: const Color.fromARGB(255, 6, 77, 8),
                  corshadow: Colors.transparent,
                  textcolor: Colors.white,
                  label: 'Adicionar ao carrinho',
                  ontap: adicionarAoCarrinho,
                ),
              ),

              const SizedBox(height: 20),

              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Similar supplement',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),

              const SizedBox(height: 10),

              const SimilarPage(),
            ],
          ),
        ),
      ),
    );
  }
}
