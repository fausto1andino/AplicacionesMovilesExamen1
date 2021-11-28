// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class materialesWidget extends StatelessWidget {
  const materialesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.cable, size:50.0),
        Text("Material", style: Theme.of(context).textTheme.headline4)
      ],

    ));
  }
}