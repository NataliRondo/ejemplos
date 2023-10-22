import 'package:ejemplos/ejemplos/contador.dart';
import 'package:ejemplos/ejemplos/ver_mas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ejemplos/card_animacion.dart';
import 'ejemplos/menu_circular.dart';
import 'ejemplos/menu_pasos.dart';

class Menu extends StatefulWidget {
  const Menu({super.key, required this.title});

  final String title;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the Menu object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: ((context) => const MenuCircular()),
                  ),
                );
              },
              child: const Text("Menú circular"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: ((context) => const CardAnimado()),
                  ),
                );
              },
              child: const Text("Card animado"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: ((context) => const MenuPasos()),
                  ),
                );
              },
              child: const Text("Menú con pasos"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: ((context) => const VerMas()),
                  ),
                );
              },
              child: const Text("Leer más"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: ((context) => const ExampleSlideCountdown()),
                  ),
                );
              },
              child: const Text("Contador"),
            ),
          ],
        ),
      ),
    );
  }
}
