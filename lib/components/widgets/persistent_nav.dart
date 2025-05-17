import 'package:farmacia/pages/cart.dart';
import 'package:farmacia/pages/home_page.dart';
import 'package:farmacia/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


class ProvidedStylesExample extends StatefulWidget {
  const ProvidedStylesExample({
    required this.menuScreenContext,
    final Key? key,
  }) : super(key: key);
  final BuildContext? menuScreenContext;

  @override
  _ProvidedStylesExampleState createState() => _ProvidedStylesExampleState();
}

class _ProvidedStylesExampleState extends State<ProvidedStylesExample> {
  late PersistentTabController _controller;
  

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0); // Inicia na aba 0
  }

  // Definindo 3 telas
  List<Widget> _buildScreens() => [
        const HomePage(),  // Tela de Exploração
        const Cart(),  // Tela de Calendário
        const ProfilePage(),        // Tela de Configurações
      ];

  // Definindo 3 itens na barra de navegação
  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: "Home",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search),
          title: "Carrinho",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_3_outlined),
          title: "Perfil",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.black,
        ),
      ];

  @override
  Widget build(final BuildContext context) => Scaffold(
       
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          navBarStyle: NavBarStyle.style12, // Estilo do nav bar
          backgroundColor: const Color.fromARGB(255, 54, 121, 57),
          resizeToAvoidBottomInset: false,
          stateManagement: true,
          handleAndroidBackButtonPress: true,
          hideNavigationBarWhenKeyboardAppears: true,
          padding: const EdgeInsets.only(top: 8),
          navBarHeight: 50,
          
        ),
      );
}
