import 'package:flutter/material.dart';
import 'package:flutter_aog/widgets/logo.widgets.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'package:flutter_aog/widgets/input.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dólar e Real',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var _gasCtrl = new MoneyMaskedTextController();
  var _alcoolCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        Logo(),
        Input(
          ctrl: _gasCtrl,
          label: "Dólar",
        ),
        Input(
          ctrl: _alcoolCtrl,
          label: "Real",
        ),
      ]),
    );
  }
}
