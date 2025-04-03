import 'package:flutter/material.dart';
import 'package:gympass/theme/colors.dart';

class HistoricScreen extends StatelessWidget {
  const HistoricScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text("Histórico",
            style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: 28, // Você pode alterar conforme necessário
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Bordas arredondadas
              ),
              color: AppColors.under_background, // Cor de fundo do card
              elevation: 4, // Sombra do card para dar destaque
              child: ListTile(
                leading: const Icon(
                  Icons.check_circle,
                  color: AppColors.primary, // Cor coerente com o projeto
                ),
                title: const Text(
                  "Check-in na Academia XYZ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black, // Cor do título
                  ),
                ),
                subtitle: Text(
                  "Data: 15/02/2025",
                  style:
                      TextStyle(color: AppColors.black54), // Cor do subtítulo
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.black54, // Cor do ícone de navegação
                ),
                onTap: () {
                  // Ação ao clicar no item (pode ser uma navegação ou exibir mais detalhes)
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
