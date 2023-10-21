import 'package:flutter/material.dart';

class MenuPasos extends StatefulWidget {
  const MenuPasos({super.key});

  @override
  State<MenuPasos> createState() => _MenuPasosState();
}

class _MenuPasosState extends State<MenuPasos> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Menú con pasos",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(
              steps: const [
                Step(
                  title: Row(
                    children: [
                      Icon(Icons.home),
                      Text("Paso 1"),
                    ],
                  ),
                  content: Text("data"),
                ),
                Step(
                  title: Text("Paso 2"),
                  content: Text("data"),
                ),
                Step(
                  title: Text("Paso 3"),
                  content: Text("data"),
                ),
              ],
              onStepTapped: (value) {
                setState(() {
                  currentStep = value;
                });
              },
              currentStep: currentStep,
              onStepContinue: () {
                if (currentStep < 2) {
                  setState(() {
                    currentStep += 1;
                  });
                }
              },
              onStepCancel: () {
                if (currentStep > 0) {
                  setState(() {
                    currentStep -= 1;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
