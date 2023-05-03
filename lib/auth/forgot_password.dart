import 'package:flutter/material.dart';
import 'package:front_ui/auth/login.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reset'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                  Text('Reset password to continue',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white54))
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 5),
                                color: Colors.green.withOpacity(.2),
                                spreadRadius: 5,
                                blurRadius: 10)
                          ]),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: 'Email', border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 5),
                                color: Colors.green.withOpacity(.2),
                                spreadRadius: 5,
                                blurRadius: 10)
                          ]),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'New Password', border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 5),
                                color: Colors.green.withOpacity(.2),
                                spreadRadius: 5,
                                blurRadius: 10)
                          ]),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Confirm Password', border: InputBorder.none),
                      ),
                    ),
                    
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                              Get.to(() => const LoginScreen());
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: const EdgeInsets.all(15)),
                      child: const Text('Confirm'),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
