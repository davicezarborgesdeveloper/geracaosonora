import 'package:flutter/material.dart';
import 'package:geracao_sonora/app/core/ui/helpers/size_extensions.dart';
import 'package:geracao_sonora/app/core/ui/theme/theme_config.dart';
import 'package:geracao_sonora/app/core/ui/widgets/send_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: context.percentHeight(.1)),
              Center(
                child: SizedBox(
                  width: context.percentWidth(.6),
                  child: Image.asset('assets/images/logo_completa.png'),
                ),
              ),
              SizedBox(height: context.percentHeight(.20)),
              TextField(
                decoration: InputDecoration(label: Text('Email')),
              ),
              SizedBox(height: 32),
              TextField(decoration: InputDecoration(label: Text('Password'))),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {}, child: Text("Esqueceu sua senha?"))
                ],
              ),
              SizedBox(height: context.percentHeight(.08)),
              SendButton(
                label: 'Entrar',
                onPressed: () {},
                width: context.percentWidth(.83),
              )
            ],
          ),
        ),
      ),
    );
  }
}
