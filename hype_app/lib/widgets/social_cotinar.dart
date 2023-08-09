import 'package:flutter/material.dart';

class SocialContinerWidget extends StatelessWidget {
  const SocialContinerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450, // Provide a fixed height or other constraints
      child: PageView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("image/profilimg.jpeg"),
                        radius: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Dolers Doyals",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Follow",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green))),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("image/banner1.jpg"),
                            fit: BoxFit.cover)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("image/profilimg.jpeg"),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.red,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_comment_rounded,
                            size: 30,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.screen_share_outlined,
                            size: 30,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
            const     Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "regina_reneer and 10 others liked",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text("10k", style: TextStyle(color: Colors.white)),
                    Text("99+", style: TextStyle(color: Colors.white)),
                    Text("99+", style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
