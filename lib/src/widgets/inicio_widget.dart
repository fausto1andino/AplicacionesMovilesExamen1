import 'package:flutter/material.dart';

class InicioWidget extends StatelessWidget {
  const InicioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.home, size: 50.0),
        Text("Inicio", style: Theme.of(context).textTheme.headline4)
      ],
    ));
  }
}
