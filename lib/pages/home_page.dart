import 'package:flutter/material.dart';
import 'package:nft/utils/glass_box.dart';
import 'package:nft/utils/my_bottom_bar.dart';
import 'package:nft/utils/my_tab_view.dart';
import 'package:nft/utils/my_tap.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<MyTAb> mytabs = [
    const MyTAb(title: "Recent"),
    const MyTAb(title: "Trending"),
    const MyTAb(title: "Top"),
    const MyTAb(title: "Art"),
    const MyTAb(title: "Fashoin")
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        bottomNavigationBar: const GlassBox(child: MyBottomBar()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 35),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Explore\nCollections",
                      style: TextStyle(
                          fontFamily: "outfit",
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black)),
                        child: const Icon(
                          Icons.search,
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 30),
              TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.grey.shade300,
                  unselectedLabelStyle: const TextStyle(
                      fontFamily: "outfit",
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(
                      fontFamily: "outfit",
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                  indicatorColor: Colors.green,
                  indicatorWeight: 3,
                  tabs: mytabs),
              const Expanded(
                child: TabBarView(children: [
                  MyTabView(imagePath: "assets/nft_1.jpg"),
                  MyTabView(imagePath: "assets/nft_2.jpg"),
                  MyTabView(imagePath: "assets/nft_3.jpg"),
                  MyTabView(imagePath: "assets/nft_4.jpg"),
                  MyTabView(imagePath: "assets/nft_5.jpg"),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
