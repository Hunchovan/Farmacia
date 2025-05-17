import 'package:farmacia/components/onboarding_screen/onboarding_screen.dart';
import 'package:farmacia/components/widgets/button.dart';
import 'package:farmacia/components/widgets/password_field.dart';
import 'package:farmacia/components/widgets/transparent_field.dart';
import 'package:farmacia/models/localfiles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Localfiles.login),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 300),

                TransparentEmailField(controller: emailController),

                SizedBox(height: 20),

                PasswordField(controller: passwordController),

                SizedBox(height: 7),

                Align(
                  alignment: Alignment.centerRight,

                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 209, 204, 204),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Button(
                  corprincipal: const Color.fromARGB(197, 24, 24, 24),
                  corshadow: Colors.transparent,
                  textcolor: Colors.lightGreenAccent,
                  label: 'Entrar na conta',
                  ontap: () {
                     Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const OnboardingScreen(),
                          
                        )); // sua Home
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
