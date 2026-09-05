import 'package:flutter/material.dart';

import '../../custom widget/app_text.dart';

class AboutPrivacyScreen extends StatefulWidget {
  const AboutPrivacyScreen({super.key});

  @override
  State<AboutPrivacyScreen> createState() => _AboutPrivacyScreenState();
}

class _AboutPrivacyScreenState extends State<AboutPrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            SizedBox(height: 20,),
            RichText(text: TextSpan(
                children: [
                  TextSpan(text: "MFS Cash Out Charge Calculator – Disclaimer\n\n",style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),),
                  TextSpan(
                      text:
                      "MFS Cash Out Charge Calculator is an unofficial app designed to help users estimate Cash Out charges and total amounts; it is not affiliated with or endorsed by any MFS provider.",style: TextStyle(fontSize: 12,color: Colors.black)
                  ),
                ]
            )),
            SizedBox(height: 20,),
            AppText(text: "Developed by : Mahamudul Hasan",fontWeight: FontWeight.bold,fontSize: 20,),
          ],
        ),
      ),
    );
  }
}
