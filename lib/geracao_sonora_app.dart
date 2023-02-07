import 'package:flutter/material.dart';
import 'package:geracao_sonora/app/core/ui/theme/theme_config.dart';
import 'package:geracao_sonora/app/pages/splash/splash_page.dart';

class GeracaoSonoraApp extends StatelessWidget {
  const GeracaoSonoraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geração Sonora',
      theme: ThemeConfig.theme,
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
