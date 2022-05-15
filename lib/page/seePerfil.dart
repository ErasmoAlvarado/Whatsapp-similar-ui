import 'package:flutter/material.dart';

class seePerfil extends StatelessWidget {
  final String image;
  const seePerfil({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        image,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
