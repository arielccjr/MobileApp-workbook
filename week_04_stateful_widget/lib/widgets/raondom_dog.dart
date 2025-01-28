import 'package:flutter/material.dart';

class RandomDog extends StatelessWidget {
  const RandomDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network('https://images.dog.ceo/breeds/gaddi-indian/Gaddi.jpg'),
        ElevatedButton(
          onPressed: () {
            // Get a new image url
            print('Get image button pressed');
          },
          child: const Text('Get Image'),
        ),
      ],
    );
  }
}
