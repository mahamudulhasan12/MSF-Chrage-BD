import 'package:flutter/material.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.green.shade100,
          title: Text("MFS Chrage BD",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
          toolbarHeight: 45,
        ),
        body: ListView(
          children: [
            Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              child: TabBar(
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.blue,
                labelColor: Colors.black,
                tabs: [
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.backpack_outlined),text: "saga",),
                  Tab(icon: Icon(Icons.home),text: "asgfas",),
                  Tab(icon: Icon(Icons.home),text: "asgag",),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
