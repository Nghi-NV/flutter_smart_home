import 'package:flutter/material.dart';
import 'package:lumilife/models/scenes_model.dart';

class Scenes extends StatefulWidget {
  const Scenes({Key? key}) : super(key: key);

  @override
  _ScenesState createState() => _ScenesState();
}

class _ScenesState extends State<Scenes> {
  int sceneSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
        itemCount: scenes.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      sceneSelected = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.fastOutSlowIn,
                    width: 60,
                    height: sceneSelected == index ? 90 : 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 2),
                          color: Colors.black12,
                          blurRadius: 2,
                        ),
                        BoxShadow(
                          offset: Offset(-1, 0),
                          color: Colors.black12,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: scenes[index].color.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Icon(
                            scenes[index].icon,
                            color: scenes[index].color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 14,
                  left: 0,
                  right: 0,
                  child: Text(
                    scenes[index].name,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
