import 'package:flutter/material.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Text(
                  "Explore",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/Home/Chart.png")),
              ],
            ),
          ),
          tabbar()
        ],
      ),
    );
  }

  tabbar() {
    return const SizedBox(
      height: 50,
      child: TabBar(tabs: [
        SizedBox(
            height: 50,
            child: Center(
              child: Text(
                "All",
                style: TextStyle(fontSize: 10),
              ),
            )),
        SizedBox(
            height: 50,
            child: Center(
              child: Text(
                "Popular",
                style: TextStyle(fontSize: 10),
              ),
            )),
        SizedBox(
            height: 50,
            child: Center(
              child: Text(
                "Live",
                style: TextStyle(fontSize: 10),
              ),
            )),
        SizedBox(
            height: 50,
            child: Center(
              child: Text(
                "VS",
                style: TextStyle(fontSize: 10),
              ),
            )),
        SizedBox(
            height: 50,
            child: Center(
              child: Text(
                "Nearby",
                style: TextStyle(fontSize: 10),
              ),
            )),
        SizedBox(
            height: 50,
            child: Center(
              child: Text(
                "New",
                style: TextStyle(fontSize: 10),
              ),
            )),
      ]),
    );
  }
}
