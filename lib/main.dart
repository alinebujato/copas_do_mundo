import 'package:flutter/material.dart';
import './screens/copas_screen.dart';
import './screens/copas_detalhes_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Copas do Mundo',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CopasScreen(),
        '/copas_detalhes': (context) => CopasDetalhesScreen(),
      },
    );
  }
}
