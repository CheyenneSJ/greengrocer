import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:greengrocer/src.dart/config/custom_colors.dart';
import 'package:greengrocer/src.dart/pages/base/common_widgets/app_name_widget.dart';
import 'package:greengrocer/src.dart/pages_routes/app_pages.dart';

import '../../base/common_widgets/custom_text_field.dart';

import '../../base/common_widgets/app_name_widget.dart';
import '../controller/auth_controller.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: CustomColors.customSwatchColor,
        body: SingleChildScrollView(
            child: SizedBox(
                height: size.height,
                width: size.width,
                child: Column(children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppNameWidget(
                        greenTitleColor: Colors.white,
                        textSize: 40,
                      ),
                      SizedBox(
                        height: 30,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                          child: AnimatedTextKit(
                            pause: Duration.zero,
                            repeatForever: true,
                            animatedTexts: [
                              FadeAnimatedText('Frutas'),
                              FadeAnimatedText('Carnes'),
                              FadeAnimatedText('Cereais'),
                              FadeAnimatedText('Legumes'),
                              FadeAnimatedText('Verduras'),
                              FadeAnimatedText('Laticínios'),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            //email
                            CustomTextField(
                              controller: emailController,
                              icon: Icons.email,
                              label: 'Email',
                              validator: (email) {
                                if (email == null || email.isEmpty)
                                  return 'Digite seu email';
                                if (!email.isEmail)
                                  return 'Digite o email válido!';
                                return null;
                              },
                            ),

                            //senha
                            CustomTextField(
                                controller: passwordController,
                                icon: Icons.lock,
                                label: 'Senha',
                                isSecret: true,
                                validator: (password) {
                                  if (password == null || password.isEmpty) {
                                    return 'Digite sua senha!';
                                  }
                                  if (password.length < 7) {
                                    return 'Digite uma senha com pelo menos 7 caracteres.';
                                  }

                                  return null;
                                }),

                            //Botão de entrar
                            SizedBox(
                              height: 50,
                              child: GetX<AuthController>(
                                  builder: (authController) {
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                  onPressed: authController.isLoading.value
                                      ? null
                                      : () {
                                          FocusScope.of(context).unfocus();
                                          if (_formKey.currentState!
                                              .validate()) {
                                            String email = emailController.text;
                                            String password =
                                                passwordController.text;
                                            authController.signIn(
                                                email: email,
                                                password: password);
                                            print(
                                                'Email: $email - Senha: $password');
                                          } else {
                                            print('Campos não válidos');
                                          }
                                        }
                                  //Get.offNamed(PagesRoutes.baseRoute);
                                  ,
                                  child: authController.isLoading.value
                                      ? const CircularProgressIndicator(
                                          color: Colors.white,
                                        )
                                      : const Text(
                                          'Entrar',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                );
                              }),
                            )
                          ]),
                    ),
                  ),

                  //esqueceu a senha
                  Container(
                    color: Colors.white,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: CustomColors.customContrastColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //Divisor
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Ou'),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Botão de novo usuário
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 80,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 12,
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side:
                              const BorderSide(width: 2, color: Colors.green)),
                      onPressed: () {
                        Get.toNamed(PagesRoutes.signUpRoute);
                      },
                      child: const Text(
                        'Criar conta',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
