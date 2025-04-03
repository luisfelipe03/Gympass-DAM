import 'package:flutter/material.dart';
import 'package:gympass/screens/components/custom_text_field.dart';
import 'package:gympass/screens/home_screen.dart';
import 'package:gympass/theme/colors.dart';
import 'package:gympass/utils/validation_utils.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        // Adiciona rolagem
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Cadastro",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: "Nome",
                  hint: "Digite seu nome completo",
                  controller: _nameController,
                  validator: ValidationUtils.validateName,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  label: "Email",
                  hint: "Digite seu email",
                  controller: _emailController,
                  validator: ValidationUtils.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  label: "Senha",
                  hint: "Digite sua senha",
                  controller: _passwordController,
                  validator: ValidationUtils.validatePassword,
                  isPassword: true,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  label: "Confirme a Senha",
                  hint: "Digite novamente a sua senha",
                  controller: _confirmPasswordController,
                  validator: (value) => ValidationUtils.validateConfirmPassword(
                      value, _passwordController.text),
                  isPassword: true,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.black54,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text("Cadastrar",
                        style: TextStyle(color: AppColors.white, fontSize: 16)),
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
