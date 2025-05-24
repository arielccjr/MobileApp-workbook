import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String image;

  const ProfileImage(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 250.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 4.0,
        ),
      ),
    );
    // return ClipOval(
    //   child: Image.asset(
    //     image,
    //     width: 250.0,
    //     height: 250.0,
    //   ),
    // );
  }
}
