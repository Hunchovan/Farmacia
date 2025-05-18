import 'package:farmacia/components/onboarding_screen/onboarding_screen.dart';
import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/components/widgets/compostos/sair_widgets.dart';
import 'package:farmacia/models/localfiles.dart';
import 'package:flutter/material.dart';

class CompraPage extends StatelessWidget {
  const CompraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 55),

              // widgets em cima da tela, sair, like e share
              SairWidgets(),
              Image.asset(Localfiles.whey, scale: 1.5),

              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Whey Protein (usn) 4kg',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),

              SizedBox(height: 5),

              Row(
                children: [
                  Icon(Icons.star_border, color: Colors.yellow),
                  SizedBox(width: 2),
                  Text('4.8 (2.2k)'),
                ],
              ),

              SizedBox(height: 20),

              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Price 240 Mzn',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),

              SizedBox(height: 10),

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
                        '4 kg por Balde',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  Container(
                    height: 55,
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 6, 77, 8),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_outline,
                            color: const Color.fromARGB(255, 6, 77, 8),
                          ),
                        ),

                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 6, 77, 8),
                          ),
                        ),

                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: const Color.fromARGB(255, 6, 77, 8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              SizedBox(
                height: 65,
                child: Button(
                  corprincipal: const Color.fromARGB(255, 6, 77, 8),
                  corshadow: Colors.transparent,
                  textcolor: Colors.white,
                  label: 'Adicionar ao carrinho',
                  ontap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const OnboardingScreen(),
                      ),
                    ); // sua Home
                  },
                ),
              ),

              SizedBox(height: 20),

              // similar suplement
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Similar supplement',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),

              SizedBox(height: 10),

              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(76, 6, 77, 8)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Image.asset(Localfiles.whey),

                    // adiciona um pouco de espaço horizontal, se quiser
                    const SizedBox(width: 8),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // <- aqui
                      children: [
                        const SizedBox(height: 10),

                        const Text(
                          'Whey protein 4 kg',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 5),

                        const Text(
                          'Suplementos', // corrigi ortografia :)
                          style: TextStyle(),
                        ),

                        const SizedBox(height: 20),

                        Row(
                          children: const [
                            Icon(Icons.star_border, color: Colors.yellow),
                            SizedBox(width: 4),
                            Text('4.8 (2.2k)'),

                            SizedBox(width: 50),

                            Text(
                              '2500 Mzn',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
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
