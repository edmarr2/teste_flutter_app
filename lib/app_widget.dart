import 'package:flutter/material.dart';
import 'package:teste_flutter_app/Controller/app_controller.dart';
import 'package:teste_flutter_app/View/WidgetLogin.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: AppController.instance, builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.isDark
              ? Brightness.dark
              : Brightness.light,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => WidgetLogin(),
        },
      );
    });
  }
}
