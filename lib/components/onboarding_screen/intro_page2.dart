import 'package:farmacia/models/localfiles.dart';
import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity, // Usa a largura total da tela
          height: double.infinity, // Usa a altura total da tela
          decoration: const BoxDecoration(
            // Você pode adicionar mais estilos aqui, como bordas ou gradientes
            color: Colors.black, // Cor de fundo opcional para o container
          ),
          child: Image.asset(
           Localfiles.tela2, // Substitua pelo caminho da sua imagem
            fit: BoxFit.cover, // Ajusta a imagem para cobrir o espaço disponível
          ),
        ),
      ),
    );
  }
}
