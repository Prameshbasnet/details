import 'package:details/pages/home_page.dart';
import 'package:details/pages/login_page.dart';
import 'package:details/providers/customer_details.dart';
import 'package:details/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => CustomerDetailsProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const LoginPage(),
        MyRouts.homeRoute: (context) => const MyHomePage(),
      },
    );
  }
}
