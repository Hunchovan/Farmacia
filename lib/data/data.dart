import 'package:farmacia/models/localfiles.dart';
import 'package:flutter/material.dart';

class Medicamentos{
  String imagePath;
  String nome;
  double preco;
  String categorias;
  String quantidade;
  double stars;

  Medicamentos({
    required this.nome ,
    this.categorias = '',
    this.imagePath = '',
    this.preco = 0,
    this.quantidade = '',
    this.stars = 0
  });


  static List<Medicamentos> medList = [
    Medicamentos(
      nome: 'Paracetamol Azevedo',
      preco: 250,
      imagePath: Localfiles.azevedo,
      quantidade: 'Caixa 500mg',
      stars: 4.5,
      categorias: 'Medicamento'

    ),
    Medicamentos(
      nome: 'Ibruprofeno',
      preco: 175,
      imagePath: Localfiles.ibru,
      quantidade: 'Caixa 50mg',
      stars: 4.8,
      categorias: 'Medicamento'

    ),
    Medicamentos(
      nome: 'Clorofenamina',
      preco: 100,
      imagePath: Localfiles.cloro,
      quantidade: 'Caixa 30mg',
      stars: 4.5,
      categorias: 'Medicamento'
    ),

  ];

  static List<Medicamentos> supList = [
     Medicamentos(
      nome: 'Omega 3',
      preco: 850,
      imagePath: Localfiles.omega,
      quantidade: '500ml',
      stars: 3.8,
      categorias: 'Medicamento'

    ),
    Medicamentos(
      nome: 'Whey Protein',
      preco: 3500,
      imagePath: Localfiles.whey,
      quantidade: 'Balde 4kg',
      stars: 4.8,
      categorias: 'Medicamento'
    ),

    Medicamentos(
      nome: 'Creatina',
      preco: 100,
      imagePath: Localfiles.creatina,
      quantidade: '600g',
      stars: 4.5,
      categorias: 'Medicamento'
    ),
    

  ];
  static List<Medicamentos> best = [
     Medicamentos(
      nome: 'Omega 3',
      preco: 850,
      imagePath: Localfiles.omega,
      quantidade: '500ml',
      stars: 3.8,
      categorias: 'Medicamento'

    ),
    Medicamentos(
      nome: 'Whey Protein',
      preco: 3500,
      imagePath: Localfiles.whey,
      quantidade: 'Balde 4kg',
      stars: 4.8,
      categorias: 'Medicamento'
    ),

    Medicamentos(
      nome: 'Creatina',
      preco: 100,
      imagePath: Localfiles.creatina,
      quantidade: '600g',
      stars: 4.5,
      categorias: 'Medicamento'
    ),
    

  ];
}