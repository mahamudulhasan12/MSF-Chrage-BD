import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DevProfileScreen extends StatefulWidget {
  const DevProfileScreen({super.key});

  @override
  State<DevProfileScreen> createState() => _DevProfileScreenState();
}

class _DevProfileScreenState extends State<DevProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_outlined)),
        toolbarHeight: 30,
      ),
      // backgroundColor: Colors.black.withOpacity(0.7),
      body: ListView(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 0.5,color: Colors.blue)
            ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/232642638?v=4",
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Md. Mahamudul Hasan",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                // color:Colors.white,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          SizedBox(height: 20),
          SelectionArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "I am currently studying Computer Science and Technology at Dinajpur Polytechnic Institute.\n\n"
                      "I am a passionate Flutter Developer and Junior Mobile App Developer specializing in building high-performance, scalable cross-platform applications for Android and iOS using Dart and the Flutter Framework. I enjoy creating clean, responsive, and user-friendly mobile applications while continuously improving my skills in modern app development.\n\n",

                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.6, // Better line spacing
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              "Connect with me",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse(
                    "https://www.facebook.com/md.mahamudul.hasan.mdmahamudulhasanmunna",
                  );
                  if (!await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Image.network(
                  height: 27,
                  width: 27,
                  fit: BoxFit.fill,
                  "https://cdn-icons-png.flaticon.com/128/15047/15047435.png",
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse(
                    "https://www.linkedin.com/in/md-mahamudul-hasan-mahamudulhasan/?skipRedirect=true",
                  );
                  if (!await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Image.network(
                  height: 27,
                  width: 27,
                  fit: BoxFit.fill,
                  "https://cdn-icons-png.flaticon.com/128/3536/3536505.png",
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse(
                    "https://github.com/mahamudulhasan12",
                  );
                  if (!await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Image.network(
                  height: 27,
                  width: 27,
                  fit: BoxFit.fill,
                  "https://cdn-icons-png.flaticon.com/128/2111/2111432.png",
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse("https://discord.com/channels/@me");
                  if (!await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Image.network(
                  height: 27,
                  width: 27,
                  fit: BoxFit.fill,
                  "https://cdn-icons-png.flaticon.com/128/14919/14919693.png",
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final Uri phoneUri = Uri(
                    scheme: 'tel',
                    path: '+8801913242701',
                  );
                  try {
                    await launchUrl(phoneUri);
                  } catch (e) {
                    debugPrint('Could not launch phone dialer: $e');
                  }
                },
                child: Image.network(
                  height: 27,
                  width: 27,
                  fit: BoxFit.fill,
                  "https://cdn-icons-png.flaticon.com/128/5585/5585856.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () async {
              final Uri url = Uri.parse(
                "https://drive.google.com/file/d/1D8NCfnz3QEAOYSpCUU6G3H9bxTDTGFCn/view?usp=drive_link",
              );
              if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                throw Exception('Could not launch $url');
              }
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              shadowColor: Colors.tealAccent,
              elevation: 10,

              minimumSize: Size(150, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              "Download My Resume",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}