import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 159, 182, 216),
      endDrawer: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        onPressed: () {},
      ),
      body: Column(children: [
        // AppBar
        Container(
          color: const Color.fromARGB(255, 52, 141, 201),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              children: [
                // Profile Picture
                const CircleAvatar(
                  radius: 33,
                ),
                const SizedBox(
                  width: 22,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Hello,",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text("John Smith",
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 44,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ),
        // search bar
        const Padding(
          padding: EdgeInsets.all(22.0),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.search, color: Color.fromARGB(255, 66, 63, 63)),
                hintText: "Search",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22)))),
          ),
        )
      ]),
    );
  }
}
