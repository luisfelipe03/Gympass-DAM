import 'package:flutter/material.dart';
import 'package:gympass/theme/colors.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text("Configuração",
            style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Container(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                ListTile(
                  leading: const Icon(Icons.person, color: AppColors.black54),
                  title: const Text("Perfil"),
                  subtitle: const Text("Editar informações pessoais"),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navegar para uma tela de perfil se necessário
                  },
                ),
                SwitchListTile(
                  secondary:
                      const Icon(Icons.notifications, color: AppColors.black54),
                  title: const Text("Notificações"),
                  subtitle: const Text("Receber alertas e atualizações"),
                  value: true,
                  onChanged: (bool value) {},
                ),
                ListTile(
                  leading: const Icon(Icons.info, color: AppColors.black54),
                  title: const Text("Sobre o App"),
                  subtitle: const Text("Versão 1.0.0"),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                // Implementar logout se necessário
              },
              child: const Text("Sair"),
            ),
          ),
        ],
      ),
    );
  }
}
