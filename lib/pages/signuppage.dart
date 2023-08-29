import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';

import '../controller/auth_with_number.dart';

class SingupPage extends StatelessWidget {
  const SingupPage({super.key});

  @override
  Widget build(BuildContext context) {
    authWithNumber controller = Get.put(authWithNumber());
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset("assets/images/login.png"),
                  const Row(
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Please enter mobile number where we will send OTP code",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: controller.number,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Colors.deepPurple.shade100,
                              filled: true,
                              hintText: "Enter Mobile Number",
                              prefix: Container(
                                child: Text("+91"),
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      controller.singUpWithNumber();
                    },
                    child: Text("SIGN UP"),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
