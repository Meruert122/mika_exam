import 'package:blog_post/di/locator.dart';
import 'package:blog_post/presentation/app/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'bloc/auth_bloc.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final TextEditingController _phoneController;

  @override
  void initState() {
    _phoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(locator.get()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Авторизация'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (_, state) {
              if (state is AuthSuccess) {
                context.pushReplacement(AppRoutes.otp.path, extra: state.phone);
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '+7 (999) 999-99-99',
                      errorText: state is AuthFailure ? state.message : null,
                    ),
                    inputFormatters: [
                      MaskTextInputFormatter(
                        mask: '+7 (###) ###-##-##',
                        filter: {"#": RegExp(r'[0-9]')},
                        type: MaskAutoCompletionType.lazy,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<AuthBloc>().add(
                          AuthLoginPressedEvent(
                            _phoneController.text,
                          ),
                        ),
                    child: switch (state) {
                      AuthInitial() => const Text(
                          'Войти',
                          style: TextStyle(color: Colors.white),
                        ),
                      AuthLoading() => const CircularProgressIndicator(),
                      AuthSuccess() => const CircularProgressIndicator(),
                      AuthState() => const Text('Войти'),
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
