import 'package:flutter/material.dart';
import 'package:bank_app/models/account_model.dart';

class DepositForm extends StatelessWidget {
  final Account account;

  DepositForm({required this.account});

  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Form 2: Deposit money in the customer account'),
          Text('Account Number: ${account.accountNumber}'),
          Text('Account Holder: ${account.accountHolder}'),
          TextField(
            controller: amountController,
            decoration: InputDecoration(labelText: 'Amount to Deposit'),
          ),
          ElevatedButton(
            onPressed: () {
              double amount = double.tryParse(amountController.text) ?? 0.0;

              if (amount > 0) {
                // Update the account balance
                account.balance += amount;
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Deposit Successful'),
                      content:
                          Text('Deposited: \$${amount.toStringAsFixed(2)}'),
                    );
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Invalid Amount'),
                      content: Text('Please enter a valid amount to deposit.'),
                    );
                  },
                );
              }
            },
            child: Text('Deposit'),
          ),
        ],
      ),
    );
  }
}
