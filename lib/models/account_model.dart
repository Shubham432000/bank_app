class Account {
  String accountNumber;
  String accountHolder;
  double balance;

  Account({
    required this.accountNumber,
    required this.accountHolder,
    this.balance = 0.0,
  });
}
