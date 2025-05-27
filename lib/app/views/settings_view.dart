import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpmbs/app/app_routes.dart';
import 'package:gpmbs/app/controllers/auth_controller.dart';

class SettingsView extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Get.delete<AuthController>();
            Get.offAllNamed(AppRoutes.login);
          },
          icon: Icon(Icons.logout),
          label: Text('Logout'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
