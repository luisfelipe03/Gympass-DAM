import 'package:flutter/material.dart';
import 'package:gympass/screens/cadastro_screen.dart';
import 'package:gympass/screens/login_screen.dart';
import 'package:gympass/theme/colors.dart';

class GympassScreen extends StatelessWidget {
  const GympassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "GYMPASS",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    "assets/images/Being_Healthy.png",
                    height: 300,
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CadastroScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.black54,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "Cadastre-se",
                      style: TextStyle(color: AppColors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "OU",
                    style: TextStyle(fontSize: 14, color: AppColors.black45),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 105, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.black54),
                      ),
                    ),
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: AppColors.black54, fontSize: 16),
                    ),
                  ),
                ],
              ))),
    );
  }
}
