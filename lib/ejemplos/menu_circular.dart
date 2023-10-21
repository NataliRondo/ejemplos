import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

class MenuCircular extends StatefulWidget {
  const MenuCircular({super.key});

  @override
  State<MenuCircular> createState() => _MenuCircularState();
}

class _MenuCircularState extends State<MenuCircular> {
  String _colorName = 'No';
  Color _color = Colors.black;

  GlobalKey<CircularMenuState> key = GlobalKey<CircularMenuState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        key.currentState!.reverseAnimation();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Menú circular",
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: CircularMenu(
          key: key,
          alignment: Alignment.bottomRight,
          radius: 100,
          backgroundWidget: Center(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 28),
                children: <TextSpan>[
                  TextSpan(
                    text: _colorName,
                    style:
                        TextStyle(color: _color, fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' button is clicked.'),
                ],
              ),
            ),
          ),
          toggleButtonOnPressed: () {
            print("oki");
            //FocusScope.of(context).unfocus();
          },
          toggleButtonColor: Colors.pink,
          items: [
            CircularMenuItem(
              padding: 6,
              icon: Icons.home,
              color: Colors.green,
              onTap: () {
                setState(() {
                  _color = Colors.green;
                  _colorName = 'Green';
                });
              },
            ),
            CircularMenuItem(
              padding: 6,
              icon: Icons.search,
              color: Colors.blue,
              onTap: () {
                setState(() {
                  _color = Colors.blue;
                  _colorName = 'Blue';
                });
              },
            ),
            CircularMenuItem(
              padding: 6,
              icon: Icons.settings,
              color: Colors.orange,
              onTap: () {
                setState(() {
                  _color = Colors.orange;
                  _colorName = 'Orange';
                });
              },
            ),
            CircularMenuItem(
              padding: 6,
              icon: Icons.chat,
              color: Colors.purple,
              onTap: () {
                setState(() {
                  _color = Colors.purple;
                  _colorName = 'Purple';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
