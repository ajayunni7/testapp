import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpmbs/app/utils.dart';
import '../controllers/auth_controller.dart';

class LoginView extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final res = ResponsiveHelper(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 220, 220),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(size: 50, Icons.android),
              Text('Hello again!', style: GoogleFonts.bebasNeue(fontSize: 32)),
              SizedBox(height: res.width(0.01)),
              Text(
                "Welcome back you have been missed",
                style: GoogleFonts.afacad(fontSize: 22),
              ),
              SizedBox(height: res.width(0.15)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white),
                  color: const Color.fromARGB(255, 238, 238, 238),
                ),
                child: TextField(
                  controller: authController.emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: res.width(0.04)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white),
                  color: const Color.fromARGB(255, 238, 238, 238),
                ),
                child: TextField(
                  obscureText: true,
                  controller: authController.passwordController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              SizedBox(height: res.width(0.03)),
              authController.isLoading.value
                  ? CircularProgressIndicator()
                  : SizedBox(
                    height: res.width(0.12),
                    width: res.width(0.8),
                    child: ElevatedButton(
                      onPressed: authController.login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.afacad(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
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
