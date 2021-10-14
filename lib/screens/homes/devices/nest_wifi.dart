import 'package:flutter/material.dart';

class NestWifiDevice extends StatelessWidget {
  const NestWifiDevice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                      Icons.wifi,
                      size: 22,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nest Wifi",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontSize: 17),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "Connected",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 4, 10, 6),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_downward,
                              size: 18,
                            ),
                            Text(
                              "97",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                        Text(
                          "Mbps Download",
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(Icons.arrow_upward),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
