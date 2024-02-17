import 'package:alarmapp/patient_pages/data/services/background_service.service.dart';
import 'package:alarmapp/patient_pages/data/services/local_notification.service.dart';
import 'package:alarmapp/patient_pages/views/date_picker.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotificationServices.init();
  await BackgroundService.initializeService();
  runApp(const AlarmApp());
}

class AlarmApp extends StatefulWidget {
  const AlarmApp({super.key});

  @override
  State<AlarmApp> createState() => _AlarmAppState();
}

class _AlarmAppState extends State<AlarmApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff6796A7),
      ),
      home: const Scaffold(
        body: DatePickerPgae(),
      ),
    );
  }
}
