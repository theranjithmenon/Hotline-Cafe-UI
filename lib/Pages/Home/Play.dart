import 'package:flutter/material.dart';

class Play extends StatelessWidget {
  const Play({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
        child: Image.asset(
      "assets/images/Home/Play/girl.png",
      fit: BoxFit.cover,
    ));
  }
}
