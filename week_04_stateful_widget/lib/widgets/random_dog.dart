import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class RandomDog extends StatefulWidget {
  const RandomDog({super.key});

  @override
  State<RandomDog> createState() => _RandomDogState();
}

class _RandomDogState extends State<RandomDog> {
  var imgUrl = '';

  Future<String> getDogImage() async {
    var dogApiUrl = 'https://dog.ceo/api/breeds/image/random';
    final res = await http.get(Uri.parse(dogApiUrl));
    final data = jsonDecode(res.body)['message'];
    return data;
  }

  @override
  void initState() {
    getDogImage().then((dogMessage) {
      setState(() {
        imgUrl = dogMessage;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imgUrl != '' ? Image.network(imgUrl) : const Text('Loading image...'),
        ElevatedButton(
          onPressed: () async {
            // Get a new image url
            var dogMessage = await getDogImage();

            setState(() {
              imgUrl = dogMessage;
            });
          },
          child: const Text('Get Image'),
        ),
      ],
    );
  }
}
