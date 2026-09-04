import 'dart:developer';

import 'package:flutter/material.dart';

import '../../custom widget/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade100,
          title: Text(
            "MFS Chrage BD",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          toolbarHeight: 45,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              child: TabBar(
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.blue,
                labelColor: Colors.black,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.backpack_outlined), text: "saga"),
                  Tab(icon: Icon(Icons.home), text: "asgfas"),
                  Tab(icon: Icon(Icons.home), text: "asgag"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: DropdownMenu(
                width: 250,
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
                onSelected: (value) {},
                menuStyle: MenuStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  elevation: WidgetStatePropertyAll(5),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    value: "Bkash Personal",
                    label: "Bkash Personal",
                  ),
                  DropdownMenuEntry(value: "Bkash Agent", label: "Bkash Agent"),
                  DropdownMenuEntry(
                    value: "Priyo Number",
                    label: "Proyo Number",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                log(value);
              },
              controller: amount,
              decoration: InputDecoration(
                hintText: "৳ Amount",
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(child: AppText(text: "Cashout Rate :৳ 1.5 %",fontSize: 22,fontWeight: FontWeight.bold,)),
            SizedBox(
              height: 40,

              child: ListView(

              ),
            )
          ],
        ),
      ),
    );
  }
}

