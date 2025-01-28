import 'package:flutter/material.dart';

class RandomDog extends StatelessWidget {
  RandomDog({super.key});

  var imgUrl = 'https://images.dog.ceo/breeds/gaddi-indian/Gaddi.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imgUrl),
        ElevatedButton(
          onPressed: () {
            // Get a new image url
            print('Get image button pressed');
            imgUrl = 'something new';
          },
          child: const Text('Get Image'),
        ),
      ],
    );
  }
}
