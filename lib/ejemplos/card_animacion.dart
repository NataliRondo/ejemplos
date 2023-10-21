import 'package:flutter/material.dart';
import 'package:flutter_slimy_card/flutter_slimy_card.dart';

class CardAnimado extends StatefulWidget {
  const CardAnimado({super.key});

  @override
  State<CardAnimado> createState() => _CardAnimadoState();
}

class _CardAnimadoState extends State<CardAnimado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Card animado",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlutterSlimyCard(
                topCardWidget: topWidget(),
                bottomCardWidget: bottomWidget(),
                //topCardHeight: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }

  topWidget() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('src/harry-5.png'), fit: BoxFit.contain),
          ),
          /*child: Column(
            children: [
              SizedBox(
                  height: 200,
                  child: Image(image: AssetImage('src/harry-5.png'))),
              SizedBox(
                height: 5,
              ),
              Text(
                'A Horse',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),*/
        ),
      ),
    );
  }

  bottomWidget() {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: const Column(
        children: [
          SizedBox(height: 10),
          Flexible(
              child: Text(
            'A horse is a large animal which people can ride. Some horses are used for pulling ploughs and carts. Say Hello to a Funny Hourse.',
            style: TextStyle(color: Colors.white),
          ))
        ],
      ),
    );
  }
}
