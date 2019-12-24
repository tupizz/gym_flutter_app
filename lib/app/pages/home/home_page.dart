import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gym Exercices', style: Theme.of(context).textTheme.title),
      ),
      body: Container(
        child: Center(child: Text("Hello world")),
      ),
    );
  }
}
