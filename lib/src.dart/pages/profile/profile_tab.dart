import 'package:flutter/material.dart';
import 'package:greengrocer/src.dart/pages/base/common_widgets/custom_text_field.dart';
import 'package:greengrocer/src.dart/config/app_data.dart' as appData;

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            initialValue: appData.user.email,
            icon: Icons.email,
            label: 'Email',
          ),
          CustomTextField(
            initialValue: appData.user.name,
            icon: Icons.person,
            label: 'Nome',
          ),
          CustomTextField(
            initialValue: appData.user.phone,
            icon: Icons.phone,
            label: 'Celular',
          ),
          CustomTextField(
            initialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),
        ],
      ),
    );
  }
}
