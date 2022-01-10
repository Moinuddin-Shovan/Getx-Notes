import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sqflite/services/notification_services.dart';
import 'package:getx_sqflite/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifier;

  @override
  void initState() {
    super.initState();
    notifier = NotificationService();
    notifier.initializeNotification();
    notifier.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: const [
          Text(
            "Theme Data",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() => AppBar(
        leading: GestureDetector(
          onTap: () {
            ThemeService().switchTheme();
            notifier.displayNotification(
                title: "Theme changed",
                body:
                    Get.isDarkMode ? "Light mode Active" : "Dark mode active");
            notifier.scheduledNotification();
          },
          child: const Icon(
            Icons.nightlight,
            size: 20,
          ),
        ),
        actions: const [
          Icon(
            Icons.nightlight,
            size: 20,
          ),
          SizedBox(
            width: 20,
          )
        ],
      );
}
