import 'package:flutter/material.dart';
import 'package:rit_ims/login_page/login.dart';
import 'package:rit_ims/splash/splash.dart';
import 'package:rit_ims/user_profile_page/profile.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Material(
        color: const Color.fromRGBO(200, 202, 236, 1),
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => ProfilePage()));
              },
              splashColor: Colors.grey,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(const Radius.circular(70)), color: Colors.white),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(const Radius.circular(70)),
                      child: Image(image: const AssetImage("assets/photos/211721118040.jpg")),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Column(
                    children: const [
                      Text(
                        "Rajesh L",
                        style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "rajesh.l.2021.cce@ritchennai.edu.in",
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.grey, thickness: 0.8),
            const SizedBox(height: 25),
            buildMenuItem(
              text: 'DashBoard',
              image: const AssetImage("assets/drawer/dashboard.png"),
              onClicked: () => selectedItem(context, 0),
            ),
            buildMenuItem(
              text: 'Apply Certificates',
              image: const AssetImage("assets/drawer/certificates.png"),
              onClicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: 'Grade Book',
              image: const AssetImage("assets/drawer/grade.png"),
              onClicked: () => selectedItem(context, 2),
            ),
            buildMenuItem(
              text: 'Academic Fee',
              image: const AssetImage("assets/drawer/fee.png"),
              onClicked: () => selectedItem(context, 3),
            ),
            buildMenuItem(
              text: 'Messages',
              image: const AssetImage("assets/drawer/message.png"),
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 150),
            const Divider(color: Colors.grey, thickness: 0.8),
            buildMenuItem(
              text: 'Logout',
              image: const AssetImage("assets/drawer/logout.png"),
              onClicked: () => confirmLogout(context),
            ),
          ],
        ),
      ),
    );
  }
}

void confirmLogout(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(dialogContext).pop();
            },
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () {
              Navigator.of(dialogContext).pop();
              showProgressDialog(context); // Show progress dialog
              // Simulate a delay of 2 seconds
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => SplashScreen()));
              });
            },
          ),
        ],
      );
    },
  );
}

Widget buildMenuItem({
  required String text,
  required AssetImage image,
  VoidCallback? onClicked,
}) {
  const color = Colors.black54;
  const hoverColor = Colors.white;
  return ListTile(
    leading: Image(image: image),
    title: Text(
      text,
      style: const TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.bold),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

Future<void> selectedItem(BuildContext context, int index) async {
  Navigator.of(context).pop();
  switch (index) {
    // Handle other menu items if needed
  }
}

void showProgressDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        content: Row(
          children: const [
            CircularProgressIndicator(),
            SizedBox(width: 20),
            Text("Logging out..."),
          ],
        ),
      );
    },
  );
}

