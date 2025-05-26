import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../controllers/dashboard_controller.dart';
import 'home_view.dart';
import 'profile_view.dart';
import 'settings_view.dart';

class DashboardView extends StatelessWidget {
  final DashboardController controller = Get.put(DashboardController());

  final List<Widget> pages = [HomeView(), ProfileView(), SettingsView()];

  DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.selectedIndex.value]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Obx(
          () => GNav(
            gap: 8,
            activeColor: Colors.white,
            color: Colors.grey,
            tabBackgroundColor: Colors.lightBlue,
            padding: const EdgeInsets.all(12),
            selectedIndex: controller.selectedIndex.value,
            onTabChange: controller.changeTab,
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.person, text: 'Profile'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
