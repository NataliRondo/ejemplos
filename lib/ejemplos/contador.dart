import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class ExampleSlideCountdown extends StatelessWidget {
  const ExampleSlideCountdown({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Countdown Timer"),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text('With Icon, Fade true, & SlideDirection.up'),
            ),
            SlideCountdown(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.black),
              duration: const Duration(days: 2, hours: 2, minutes: 30),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              slideDirection: SlideDirection.up,
              icon: const Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              onChanged: (value) {
                print(value);
              },
              onDone: () {
                print('Timer is over');
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text('Custom BoxDecoration & SeparatorType.title'),
            ),
            const SlideCountdown(
              duration: Duration(days: 2, hours: 2, minutes: 30),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              separatorType: SeparatorType.title,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
