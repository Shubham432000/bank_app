import 'package:flutter/material.dart';
import 'package:bank_app/screens/create_account_screen.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/create_account',
      routes: {
        '/create_account': (context) => CreateAccountScreen(),
      },
    );
  }
}
