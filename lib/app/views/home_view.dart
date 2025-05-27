import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: GoogleFonts.afacad(fontSize: 22)),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.users.length,
          itemBuilder: (context, index) {
            final user = controller.users[index];
            return ListTile(
              leading: CircleAvatar(child: Text(user.firstName[0])),
              title: Text(
                '${user.firstName} ${user.lastName}',
                style: GoogleFonts.afacad(fontSize: 20),
              ),
              subtitle: Text(
                user.email,
                style: GoogleFonts.afacad(fontSize: 16),
              ),
            );
          },
        );
      }),
    );
  }
}
