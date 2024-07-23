import 'package:flutter/material.dart';
import 'package:mail_app_responsive/pages/splash_screen/splash_screen.dart';
import 'package:mail_app_responsive/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mail it!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      initialRoute: SplashScreen.rootName,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
