import 'package:flutter/material.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              const Text(
                  "Explore",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/Home/Chart.png")),
            ],),
          )
        ],
      ),
    );
  }
}
