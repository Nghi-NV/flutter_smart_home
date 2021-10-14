import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lumilife/screens/homes/widgets/slider.dart';

class DimmerDevice extends StatelessWidget {
  const DimmerDevice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: _showModalControl,
        child: Container(
          height: 114,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(1, 1),
                blurRadius: 1,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(-1, -1),
                blurRadius: 1,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.tungsten,
                        size: 22,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lamp",
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(fontSize: 17),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Opening",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ],
                ),
                LayoutBuilder(
                  builder: (context, constain) => SliderCustom(
                    value: 0.2,
                    width: constain.maxWidth,
                  ),
                ),
                // Slider(
                //   onChanged: (value) {
                //     setState(() {
                //       _sliderValue = value;
                //     });
                //   },
                //   value: _sliderValue,
                //   divisions: 4,
                //   label: "Volume $_sliderValue",
                // ),
                // CupertinoSlider(
                //   value: _sliderValue,
                //   onChanged: (value) {
                //     setState(() {
                //       _sliderValue = value;
                //     });
                //   },
                //   // divisions: 2,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showModalControl() {
    print("_showModalControl");
    // Get.defaultDialog(
    //   custom: Container(
    //     height: 300,
    //     width: 300,
    //     color: Colors.red,
    //   ),
    // );
    // Get.generalDialog(pageBuilder: (context, a, b) {
    //   return Container(
    //     height: 50,
    //     width: 50,
    //     color: Colors.red,
    //   );
    // });
  }
}
