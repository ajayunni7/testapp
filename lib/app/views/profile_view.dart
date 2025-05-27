import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpmbs/app/utils.dart';
import '../controllers/auth_controller.dart';

class ProfileView extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    final res = ResponsiveHelper(context);
    final user = authController.loggedInUser.value;

    if (user == null) {
      return Center(child: Text('No user data available.'));
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: res.width(0.1)),
            CircleAvatar(
              radius: 40,
              child: Text(
                user.firstName[0],
                style: GoogleFonts.bebasNeue(fontSize: 32),
              ),
            ),
            SizedBox(height: res.width(0.02)),
            Text(
              '${user.firstName} ${user.lastName}',
              style: GoogleFonts.afacad(fontSize: 22),
            ),
            SizedBox(height: res.width(0.02)),
            Text(user.email), SizedBox(height: res.width(0.06)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 5, top: 5),
                  child: Center(
                    child: Text(
                      'Account Settings',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 210, 214, 253),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(width: 1, color: Colors.black38),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        title: const Text('Edit Profile'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Divider(height: 1, color: Colors.black38),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.lock,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        title: const Text('Security'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Divider(height: 1, color: Colors.black38),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        title: const Text('Saved Address'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Divider(height: 1, color: Colors.black38),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.payment,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        title: const Text('Payment Settings'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // OrdersSection
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 5, top: 5),
                  child: Center(
                    child: Text(
                      'Orders',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 204, 210, 254),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(width: 1, color: Colors.black38),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.pin_drop_outlined,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        title: const Text('Track Order'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Divider(height: 1, color: Colors.black38),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.history,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        title: const Text('Order History'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
