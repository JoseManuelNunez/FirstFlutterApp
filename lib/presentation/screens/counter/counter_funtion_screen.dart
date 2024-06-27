import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hola funtion'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: Icon(Icons.refresh_rounded),
            )
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              clickCounter.toString(),
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(!(clickCounter == 1) ? 'Clicks' : 'Click',
                style: const TextStyle(fontSize: 25))
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ), 
            CustomButton(icon: Icons.plus_one_outlined,
            onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },),
            const SizedBox(
              height: 10,
            ),
            CustomButton(icon: Icons.menu_sharp,
            onPressed: () {
                setState(() {
                  if(clickCounter == 0) return;
                  clickCounter--;
                });
              },)
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
