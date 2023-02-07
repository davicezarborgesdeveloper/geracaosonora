import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geracao_sonora/app/core/ui/helpers/size_extensions.dart';
import 'package:geracao_sonora/app/pages/login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  startSplashScreenTimer() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, navigationToNextPage);
  }

  void navigationToNextPage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.black,
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: context.percentWidth(.7),
              child: Image.asset('assets/images/logo_splash.png'),
            ),
          )
        ]),
      ),
    );
  }
}
