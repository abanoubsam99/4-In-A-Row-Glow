import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:game_4_in_row/match_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  splashColor: Colors.black,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange, width: 3),
                        borderRadius: BorderRadius.circular(15)),
                    child: GlowIcon(
                      Icons.power_settings_new,
                      glowColor: Colors.orange,
                      color: Colors.yellow,
                      size: 40,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.black,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                    child: GlowIcon(
                      Icons.volume_up,
                      glowColor: Colors.blue[900],
                      color: Colors.blue,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            GlowText(
              '4 In A Row‏ Glow',
              style: TextStyle(fontSize: 40, color: Colors.white),
              glowColor: Colors.blue,
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Assets/logo.png"),fit: BoxFit.cover),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/cpu-level',
                  arguments: {
                    'mode': Mode.PVC,
                  },
                );
              },
              splashColor: Colors.black,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange[900].withOpacity(.2)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BorderedText(
                        strokeWidth: 15.0,
                        strokeColor: Colors.orange[900],
                        child: Text(
                          "VS",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                      GlowIcon(
                        Icons.phone_iphone,
                        color: Colors.white,
                        glowColor: Colors.orange[900],
                        size: 70,
                      ),
                      BorderedText(
                        strokeWidth: 15.0,
                        strokeColor: Colors.orange[900],
                        child: Text(
                          "Phone",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/match',
                  arguments: {
                    'mode': Mode.PVP,
                  },
                );
              },
              splashColor: Colors.black,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue[300], width: 3),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withOpacity(.3)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BorderedText(
                        strokeWidth: 15.0,
                        strokeColor: Colors.blue[900],
                        child: Text(
                          "VS",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                      GlowIcon(
                        Icons.group,
                        glowColor: Colors.blue[900],
                        color: Colors.white,
                        size: 70,
                      ),
                      BorderedText(
                        strokeWidth: 15.0,
                        strokeColor: Colors.blue[900],
                        child: Text(
                          "Friend",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BorderedText(
                  strokeWidth: 1.5,
                  strokeColor: Colors.blue,
                  child: Text(
                    "Developed by Abanoub Samy",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
