import 'dart:ui';
import 'package:flutter/material.dart';
import 'beverage_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/images/Background.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Foreground content with a blurred background effect
          Padding(
            padding: const EdgeInsets.only(top: 71, left: 32, right: 32),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: SingleChildScrollView(
                    child: Container(
                      height: 750,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Logo at the top
                          const SizedBox(height: 58),
                          Image.asset(
                            'assets/images/Your_Logo.png',
                            height: 70,
                            width: 89,
                          ),
                          const SizedBox(height: 4),
                          Image.asset(
                            'assets/images/Logo_Text.png',
                            width: 117,
                          ),
                          const SizedBox(height: 13),
                          Image.asset(
                            'assets/images/pickLine.png',
                            width: 144,
                          ),
                          const SizedBox(height: 35),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: '   Username',
                              hintStyle: TextStyle(fontFamily: 'Inter', color: Colors.white),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 26),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: '   Password',
                              hintStyle: TextStyle(fontFamily: 'Inter', color: Colors.white),
                              border: UnderlineInputBorder(),
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 69),
                          Container(
                            width: 245,
                            height: 49,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF4D2B1A),
                                  Color(0xFFA7745A),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const BeveragePage(), // Navigate to BeveragePage
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(fontFamily: 'Inter', color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 39),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BeveragePage(), // Navigate to BeveragePage
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              side: const BorderSide(color: Colors.white),
                              fixedSize: const Size(245, 49),
                            ),
                            child: const Text(
                              'Signup',
                              style: TextStyle(fontFamily: 'Inter', color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 28),
                          const Text(
                            "Privacy Policy",
                            style: TextStyle(fontFamily: 'Inter', color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
