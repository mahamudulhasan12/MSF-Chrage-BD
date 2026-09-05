import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mfs_chrage/view/Home/widget/amount_section.dart';
import 'package:mfs_chrage/view/Home/widget/drawer_section.dart';
import 'package:mfs_chrage/view/cashout%20page/cashout_page.dart';
import 'package:mfs_chrage/view/privacy/about_privacy_screen.dart';

import '../../custom widget/app_text.dart';
import '../../mfs data/mfs_data.dart';
import '../about dev/about_dev_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: DrawerSection(),
        appBar: AppBar(
          backgroundColor: Colors.green.shade100,
          title: Text(
            "MFS Chrage BD",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          toolbarHeight: 45,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                child: TabBar(
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.blue,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/images/bkash.jpg"),
                          )
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 80,
                        width: 100,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/nagad.jpg"),
                            )
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/rocket.png"),
                            )
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/uppay.png"),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: TabBarView(
                  children: [
                    CashOutPage(mfsName: "bKash"),
                    CashOutPage(mfsName: "Nagad"),
                    CashOutPage(mfsName: "Rocket"),
                    CashOutPage(mfsName: "upay"),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),

      ),
    );
  }
}




