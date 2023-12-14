import 'package:blog_post/di/locator.dart';
import 'package:blog_post/presentation/app/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'otp/otp_bloc.dart';

class OtpScreen extends StatelessWidget {
  final String phone;

  const OtpScreen({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpBloc(locator.get()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Подтверждение номера телефона'),
        ),
        body: BlocConsumer<OtpBloc, OtpState>(
          listener: (context, state) {
            if (state is OtpSuccess) {
              context.pushReplacement(AppRoutes.home.path);
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Введите СМС код, отправленный на номер\n$phone',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                OTPTextField(
                  length: 4,
                  controller: OtpFieldController(),
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) => context
                      .read<OtpBloc>()
                      .add(OtpCodeFilledEvent(pin, phone)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
