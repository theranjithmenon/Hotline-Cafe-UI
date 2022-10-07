import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [topBar(), tabbar()],
      ),
    );
  }

  topBar() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Hotline Cafe",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outline_sharp,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    size: 30,
                  )),
            ],
          ),
          const Text(
            "Welcone user!",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Image.asset("assets/images/Home/banner.png"),
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
                "For You",
                style: TextStyle(fontSize: 20),
              ),
            )),
        SizedBox(
            height: 50,
            child: Center(
              child: Text(
                "Following",
                style: TextStyle(fontSize: 20),
              ),
            )),
      ]),
    );
  }
}
