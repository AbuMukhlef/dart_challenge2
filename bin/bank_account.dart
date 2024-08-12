/*
Design a Dart program with a `BankAccount` class that handles transactions. Implement methods to:

- Deposit money.
- Withdraw money.
- Print the current balance.

Include exception handling for invalid operations and user input errors. Implement a function to display a transaction history.
*/
class BankAccount {
  double yourBalance = 1500.0;
  double yourNewBalance = 0.0;
  BankAccount.deposit({
    required var yourMoney,
  }) {
    print('Your balance before deposit is $yourBalance');
    if (yourMoney <= 50) {
      throw Exception('Invalid amount, minimum deposit is more than 50');
    }
    yourNewBalance = yourMoney + yourBalance;
    print('Your new balance is $yourNewBalance');
    _withdraw(yourMoney: yourNewBalance);
    print('*************************************\n');
  }
  _withdraw({var yourMoney}) {
    print('Your balance before withdraw is $yourMoney');
  }

  yourWithdraw({required var yourWithdraw}) {
    print('Your Withdraw amount is $yourWithdraw');
    print('______________________');
    print(yourNewBalance);
    print('______________________');
    if (yourWithdraw < 500) {
      throw Exception('Invalid amount, minimum withdraw is more than 500');
    } else if (yourWithdraw > yourBalance) {
      throw Exception('Insufficient balance');
    } else {
      yourNewBalance = yourNewBalance - yourWithdraw;
      print('Your new balance is $yourNewBalance');
      print('*************************************\n');
    }
  }
}
