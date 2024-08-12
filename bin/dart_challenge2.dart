import 'bank_account.dart';

void main() {
  BankAccount bankAccount = BankAccount.deposit(yourMoney: 1000);
  bankAccount.yourWithdraw(yourWithdraw: 500);
}
