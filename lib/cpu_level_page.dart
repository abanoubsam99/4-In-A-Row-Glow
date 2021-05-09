import 'dart:math';

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:game_4_in_row/cpu.dart';

import 'match_page.dart';

class CpuLevelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    splashColor: Colors.black,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange, width: 3),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.yellow[600],
                        size: 40,
                      ),
                    ),
                  ),
                ],),
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
                    '/match',
                    arguments: {
                      'mode': Mode.PVC,
                      'cpu':
                      DumbCpu(Random().nextBool() ? Color.RED : Color.YELLOW),
                    },
                  );
                },
                splashColor: Colors.black,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.teal, width: 3),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.teal[200].withOpacity(.2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GlowIcon(
                          Icons.grade,
                          color: Colors.white,
                          glowColor: Colors.teal[300],
                          size: 70,
                        ),
                        BorderedText(
                          strokeWidth: 15.0,
                          strokeColor: Colors.teal[900],
                          child: Text(
                            "EASY",
                            style: TextStyle(color: Colors.white, fontSize: 40),
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
                      'mode': Mode.PVC,
                      'cpu': HarderCpu(
                          Random().nextBool() ? Color.RED : Color.YELLOW),
                    },
                  );
                },
                splashColor: Colors.black,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple, width: 3),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepPurple[200].withOpacity(.2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GlowIcon(
                          Icons.fire_extinguisher,
                          color: Colors.white,
                          glowColor: Colors.deepPurple[200],
                          size: 70,
                        ),
                        BorderedText(
                          strokeWidth: 15.0,
                          strokeColor: Colors.deepPurple[900],
                          child: Text(
                            "HARD",
                            style: TextStyle(color: Colors.white, fontSize: 40),
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
                      'mode': Mode.PVC,
                      'cpu': HardestCpu(
                          Random().nextBool() ? Color.RED : Color.YELLOW),
                    },
                  );
                },
                splashColor: Colors.black,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lime, width: 3),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lime[900].withOpacity(.2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GlowIcon(
                          Icons.local_fire_department_rounded,
                          color: Colors.white,
                          glowColor: Colors.lime[900],
                          size: 70,
                        ),
                        BorderedText(
                          strokeWidth: 15.0,
                          strokeColor: Colors.lime[900],
                          child: Text(
                            "SUPER HARD",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
