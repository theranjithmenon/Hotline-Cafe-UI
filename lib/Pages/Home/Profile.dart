import 'package:flutter/material.dart';
import 'package:hotline_cafe/Pages/LogIn/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [topbar(context), details(context)],
    );
  }

  topbar(context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Text(
            "kierrasaris",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          IconButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('isLoggedIn', false);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LogInPage()));
              },
              icon: const Icon(
                Icons.menu,
                size: 30,
              )),
        ],
      ),
    );
  }

  details(context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/Home/Profile/profilepic.png",
                scale: 3,
              ),
              data("255", "Posts"),
              data("255", "Following"),
              data("26k", "Followers"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Kierra Saris",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Traveler | Dancer \nLive everyday 8pm - 11pm",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button("Ahmedabad"),
              button("English"),
              button("Hindi"),
              button("Female"),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttons("Coin Balance", "2355", context, "Coin"),
              buttons("Coin Balance", "2355", context, "earnings"),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          MaterialButton(
            height: 60,
            minWidth: double.infinity,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: const Color(0xff1d1d2c),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                "assets/images/Home/Profile/gift.png",
                scale: 3,
              ),
                const SizedBox(width: 15,),
                const Text("My Gift Collection"),
                const SizedBox(width: 15,),
                const Icon(Icons.arrow_forward_ios,size: 20,)
                ],
            ),
          )
        ],
      ),
    );
  }

  data(number, category) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          category,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }

  button(text) {
    return MaterialButton(
      height: 40,
      // minWidth: 60,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color(0xff1d1d2c),
      child: Row(
        children: [
          Text(text, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  buttons(text, number, context, imagename) {
    return MaterialButton(
      height: 60,
      minWidth: MediaQuery.of(context).size.width * 0.47,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color(0xff1d1d2c),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/Home/Profile/$imagename.png",
            scale: 3,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(number, style: const TextStyle(fontSize: 14)),
              Text(text,
                  style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
