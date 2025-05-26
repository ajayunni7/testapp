import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class ProfileView extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    final user = authController.loggedInUser.value;

    if (user == null) {
      return Center(child: Text('No user data available.'));
    }

    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(radius: 40, child: Text(user.firstName[0])),
            SizedBox(height: 16),
            Text(
              '${user.firstName} ${user.lastName}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(user.email),
          ],
        ),
      ),
    );
  }
}
