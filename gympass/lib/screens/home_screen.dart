import 'package:flutter/material.dart';
import 'package:gympass/screens/history_screen.dart';
import 'package:gympass/theme/colors.dart';
import 'check_in_screen.dart';
import 'config_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Controle do índice selecionado

  // Função para mudar o conteúdo do body com base na seleção
  static const List<Widget> _pages = <Widget>[
    CheckInScreen(),
    HistoricScreen(),
    ConfigScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    Image(image: AssetImage("assets/images/Avatar.png")).image,
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flavío Caça-Rato",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis),
                    Text("Gympass",
                        style: TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: _pages
          .elementAt(_selectedIndex), // Mudando o conteúdo conforme a seleção
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: AppColors.background,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.black54,
        onTap: _onItemTapped, // Chama a função para alterar o índice
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: "Check-In",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "Histórico",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Configuração",
          ),
        ],
      ),
    );
  }
}
