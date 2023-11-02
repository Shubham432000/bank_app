import 'package:flutter/material.dart';
import 'package:bank_app/models/account_model.dart';
import 'package:bank_app/screens/deposit_screen.dart';
import 'package:bank_app/widgets/create_account_form.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  Account? createdAccount;

  void onAccountCreated(Account account) {
    setState(() {
      createdAccount = account;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: CreateAccountForm(
        onAccountCreated: onAccountCreated,
      ),
      floatingActionButton: createdAccount != null
          ? FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DepositScreen(
                      account: createdAccount!,
                    ),
                  ),
                );
              },
              child: Icon(Icons.arrow_forward),
            )
          : null,
    );
  }
}
