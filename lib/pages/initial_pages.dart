import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/models/localfiles.dart';
import 'package:farmacia/pages/login_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Localfiles.inicial),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 650),
                SizedBox(
                  width: 300,
                  child: Button(
                    corprincipal: const Color.fromARGB(197, 24, 24, 24),
                    corshadow: Colors.transparent,
                    textcolor: Colors.lightGreenAccent,
                    label: 'Entrar',
                    ontap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const LoginPage(),
                          
                        ), // sua Home
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
