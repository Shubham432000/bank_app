import 'package:flutter/material.dart';
import 'package:bank_app/screens/deposit_screen.dart';

import 'package:bank_app/widgets/deposit_form.dart';

class DepositScreen extends StatelessWidget {
  DepositScreen({required this.account});
  final account;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deposit Money'),
      ),
      body: DepositForm(
        account: account,
      ),
    );
  }
}
