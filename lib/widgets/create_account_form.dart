import 'package:flutter/material.dart';
import 'package:bank_app/models/account_model.dart';

class CreateAccountForm extends StatefulWidget {
  final Function(Account) onAccountCreated;

  CreateAccountForm({required this.onAccountCreated});

  @override
  _CreateAccountFormState createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  final TextEditingController accountNumberController = TextEditingController();
  final TextEditingController accountHolderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Form 1: Create a new account for the customer'),
          TextField(
            controller: accountNumberController,
            decoration: InputDecoration(labelText: 'Account Number'),
          ),
          TextField(
            controller: accountHolderController,
            decoration: InputDecoration(labelText: 'Account Holder'),
          ),
          ElevatedButton(
            onPressed: () {
              String accountNumber = accountNumberController.text;
              String accountHolder = accountHolderController.text;

              if (accountNumber.isNotEmpty && accountHolder.isNotEmpty) {
                Account newAccount = Account(
                  accountNumber: accountNumber,
                  accountHolder: accountHolder,
                );

                // Notify the parent widget about the created account
                widget.onAccountCreated(newAccount);
              }
            },
            child: Text('Create Account'),
          ),
        ],
      ),
    );
  }
}
