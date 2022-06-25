import 'package:flutter/material.dart';


class Individual extends StatelessWidget {
  const Individual({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           
          },
          child: const Text('Go!'),
        ),
      ),
    );
  }
}



class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Text('Page 2'),)
    );
  }
}