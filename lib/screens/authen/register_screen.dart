import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lumilife/widgets/body_decoration/body_decoration.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDecoration(
        child: Center(
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Text(
              "Back",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
