import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aog/widgets/input.widget.dart';
import 'package:flutter_aog/widgets/logo.widgets.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

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
        primaryColor: CupertinoColors.darkBackgroundGray,
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _gasCtrl = MoneyMaskedTextController();
  final _alcoolCtrl = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          const Logo(),
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 2,
                ),
                Text(
                  "O Valor atual da conversão é: ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: "Big Shoulders Display",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Input(
            ctrl: _gasCtrl,
            label: "Dólar",
          ),
          Input(
            ctrl: _alcoolCtrl,
            label: "Real",
          ),
          Container(
            margin: const EdgeInsets.all(50),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              child: const Text(
                "Calcular",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
