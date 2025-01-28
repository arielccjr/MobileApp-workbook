import 'package:flutter/material.dart';

class RandomDog extends StatefulWidget {
  const RandomDog({super.key});

  @override
  State<RandomDog> createState() => _RandomDogState();
}

class _RandomDogState extends State<RandomDog> {
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
