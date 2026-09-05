import 'package:flutter/material.dart';

import '../../about dev/about_dev_screen.dart';
import '../../privacy/about_privacy_screen.dart';
class DrawerSection extends StatelessWidget {
  const DrawerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff121212),
      width: 280,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Header
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff5146C7),
                    Color(0xff9C27B0),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(35),
                ),
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "MFS Cash Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Easy Cash Out Charge Calculator",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Main Menu
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Main Menu",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.cyanAccent,
                size: 25,
              ),
              title: const Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.white38,
              ),
            ),

            const SizedBox(height: 15),

            // Info & Support
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Info & Support",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            ListTile(
              leading: const Icon(
                Icons.info,
                color: Colors.cyanAccent,
                size: 25,
              ),
              title: const Text(
                "About Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DevProfileScreen()));
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.privacy_tip,
                color: Colors.cyanAccent,
                size: 25,
              ),
              title: const Text(
                "Privacy Policy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPrivacyScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}